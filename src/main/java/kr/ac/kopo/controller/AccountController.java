package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.TransactionVO;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AccountController {

	private final AccountService accountService;
	
	private final MemberService memberService;

	@GetMapping("/write")
	public String accountWrite(Model model) {
		AccountVO accountVO1 = new AccountVO();
		model.addAttribute("accountVO1", accountVO1);
		return "account/writeForm";
	}

	@PostMapping("/accountWrite")
	public String accountWriteProcess(@Valid @ModelAttribute("acccountVO1") AccountVO account, BindingResult result, 
			HttpSession session) {

			MemberVO member = (MemberVO) session.getAttribute("member");

			String userid = member.getId();
			
			accountService.addAccount(account, userid);
		
			String phonenumber = member.getPhonenumber();
			
			
			memberService.updateNewAccount(phonenumber);
			
			memberService.updateNewAccountTable(phonenumber);
			
			MemberVO member1 = memberService.getMember(phonenumber);
			
			session.setAttribute("member", member1);
			
			System.out.println("member:"+(MemberVO) session.getAttribute("member"));
			
			
			System.out.println("아따야~~");
			
			return "member/hanaPoint";

	}
	
	@GetMapping("/newWrite")
	public String newAccountWrite(Model model) {
		AccountVO accountVO2 = new AccountVO();
		model.addAttribute("accountVO2", accountVO2);
		return "account/newWriteForm";
	}
	
	@PostMapping("/account/newWrite")
	public String newAccountWriteProcess(@Valid @ModelAttribute("acccountVO2") AccountVO account, BindingResult result,
			HttpSession session) {

			MemberVO member = (MemberVO) session.getAttribute("member");

			String userid = member.getId();
			
			accountService.newAddAccount(account, userid);
			
			System.out.println("일로왓냐?");
			
			return "account/list";
	}
	


	@PostMapping("/account/otherWrite")
	public String otherAccountWriteProcess(@Valid @ModelAttribute("acccountVO1") AccountVO account, BindingResult result,
			HttpSession session) {

		MemberVO member = (MemberVO) session.getAttribute("member");

		String userid = member.getId();

		if (result.hasErrors()) {
			return "account/write";
		} else {
			accountService.addAccount(account, userid);
			return "message/selectMessage";
		}
	}
	

	@GetMapping("/list")
	public String accountList(Model model) {
		return "account/list";
	}

	@PostMapping("/account/list")
	@ResponseBody
	public List<AccountVO> accountListProcess(@RequestParam("phoneNumber") String phoneNumber,
			@RequestParam("withdrawalBank") String withdrawalBank) {
		
		System.out.println(phoneNumber);
		List<AccountVO> accountList = new ArrayList<>();

		if (withdrawalBank.equals("hana_bank")) {
			
			System.out.println("요기요깅12212");

			accountList = accountService.hanaAccountList(phoneNumber);
			
			System.out.println(accountList);

			return accountList;

		} else {

			accountList = accountService.otherAccountList(phoneNumber);

			return accountList;
		}
	}
	
	@GetMapping("/account/otherTransferForm")
	public String otherAccountTransferForm() {
		
		return "account/otherTransferForm";
	}
	
	
	@GetMapping("/account/otherTransferProcess")
	public String otherAccountTransferProcess() {
		
		return "ticket/foodTicket";
	}
	
	
	@PostMapping("/accountTransferForm")
	public String accountTransferForm(@RequestParam("accountNumber") String senderAccountNumber,
			@RequestParam("bankCode") String senderBankCode, @RequestParam("name") String senderName, Model model) {
		
		model.addAttribute("senderAccountNumber", senderAccountNumber);
		model.addAttribute("senderBankCode", senderBankCode);
		model.addAttribute("senderName", senderName);

		return "account/transferForm";
	}


	@PostMapping("/accountTransferProcess")
	@ResponseBody
	public String accountTransferProcess(@RequestParam("name") String name, @RequestParam("id") String memberId,
			@RequestParam("phoneNumber") String phoneNumber,
			@RequestParam("senderAccountNumber") String senderAccountNumber,
			@RequestParam("receiverAccountNumber") String receiverAccountNumber,
			@RequestParam("senderBankCode") String senderBankCode,
			@RequestParam("receiverBankCode") String receiverBankCode,
			@RequestParam("transferAmount") int transferAmount, @RequestParam("memberType") String memberType, @RequestParam("guestGroupSelector") String guestGroupSelector) {	
		
		System.out.println("옹12121233");
		
		accountService.accountTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode, receiverBankCode, transferAmount);
		

		Map<String,Object>  map = new HashMap<>();
		
		map.put("memberId", memberId);
		map.put("phoneNumber", phoneNumber);
		map.put("senderAccountNumber", senderAccountNumber);
		map.put("receiverAccountNumber", receiverAccountNumber);
		map.put("senderBankCode", senderBankCode);
		map.put("receiverBankCode", receiverBankCode);
		map.put("transferAmount", transferAmount);
		
		map.put("memberType", memberType);
		map.put("guestGroupSelector", guestGroupSelector);
		
		accountService.addTransaction(map);
		
		System.out.println("붹12121233");
		
		return "";

	}
	
	@ResponseBody
	@PostMapping("/accountReTransferProcess")
	public String accountReTransferProcess(@RequestParam("childsenderName") String name, @RequestParam("childsenderId") String memberId,
			@RequestParam("childsenderPhoneNumber") String phoneNumber,
			@RequestParam("childsenderAccountNumber") String senderAccountNumber,
			@RequestParam("childreceiverAccountNumber") String receiverAccountNumber,
			@RequestParam("childsenderBankCode") String senderBankCode,
			@RequestParam("childreceiverBankCode") String receiverBankCode,
			@RequestParam("childtransferAmount") int transferAmount) {
		
		accountService.accountTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode, receiverBankCode, transferAmount);
		
		System.out.println("도달하냐?");
		
		return "";

	}
	
	@GetMapping("/changeRePay")
	@ResponseBody
	public void changeRePay(@RequestParam("reDepositAccountNum") String receiverAccountNumber) {
		
		accountService.changeRePay(receiverAccountNumber);
		
	}
	
	@GetMapping("/rePayTransferForm")
	public String rePayTransferForm(@ModelAttribute TransactionVO transactionVO) {
		
		return "account/rePayTransferForm";
	}
	
	
	/*
	 * @PostMapping("/accountReTransferProcess") public String
	 * accountReTransferProcess(@RequestParam("name") String
	 * name, @RequestParam("id") String memberId,
	 * 
	 * @RequestParam("phoneNumber") String phoneNumber,
	 * 
	 * @RequestParam("senderAccountNumber") String senderAccountNumber,
	 * 
	 * @RequestParam("receiverAccountNumber") String receiverAccountNumber,
	 * 
	 * @RequestParam("senderBankCode") String senderBankCode,
	 * 
	 * @RequestParam("receiverBankCode") String receiverBankCode,
	 * 
	 * @RequestParam("transferAmount") int
	 * transferAmount, @RequestParam("memberType") String
	 * memberType, @RequestParam("guestGroupSelector") String guestGroupSelector) {
	 * 
	 * accountService.accountTransferProcess(senderAccountNumber,
	 * receiverAccountNumber, senderBankCode, receiverBankCode, transferAmount);
	 */
	
	

	@GetMapping("/accountTransactionList")
	public String accountTransactionList() {
			
		return "account/transactionList";
	}
	
	
	@GetMapping("/transactionBrideData")
	@ResponseBody
	public List<TransactionVO> accountBrideTransactionData(@RequestParam("phoneNum") String phoneNumber){
				
		List<TransactionVO> transactionList =accountService.selectBrideTransactionList(phoneNumber);	
		
		System.out.println("transactionList:"+transactionList);
		
		return transactionList;
	}
	
	
	@GetMapping("/transactionGroomData")
	@ResponseBody
	public List<TransactionVO> accountGroomTransactionData(@RequestParam("phoneNum") String phoneNumber){
		
		System.out.println("된건가? phoneNumber:"+phoneNumber);
		
					
		List<TransactionVO> transactionList =accountService.selectGroomTransactionList(phoneNumber);	
		
		System.out.println("transactionList:"+transactionList);
		
		return transactionList;
	}
	
	
	
	@GetMapping("/transactionGuestData")
	@ResponseBody
	public List<TransactionVO> accountGuestTransactionData(@RequestParam("phoneNum") String phoneNumber){
		
		System.out.println("된건가? phoneNumber:"+phoneNumber);
		
					
		List<TransactionVO> transactionList =accountService.selectGuestTransactionList(phoneNumber);	
		
		System.out.println("transactionList:"+transactionList);
		
		return transactionList;
	}
	
	
	@GetMapping("/transactionManagerData")
	@ResponseBody
	public List<TransactionVO> accountManagerTransactionData(){
		
	
		List<TransactionVO> transactionList =accountService.selectManagerTransactionList();	
		
		System.out.println("transactionList:"+transactionList);
		
		return transactionList;
	}
	
	

	
	
	@GetMapping("account/guestRePay")
	@ResponseBody
	public List<TransactionVO> guestRePay(@RequestParam("accountNumber") String accountNumber) {
		
		List<TransactionVO> guestRePayList = accountService.selectGuestRePayList(accountNumber);
			
		return guestRePayList;
		
	}
	
	@GetMapping("/getGroupedGuestCount")
	
	public String getGroupedGuestCount(@ModelAttribute TransactionVO transactionVO) {
		

		return "account/getGroupedGuestCount";
	}
	
	
	@GetMapping("/getGroupedGuestSum")
	public String getGroupedGuestSum(@ModelAttribute TransactionVO transactionVO) {

		return "account/getGroupedGuestSum";
	}
	

	@GetMapping("/getGroupedGuestDetail")
	public String getGroupedGuestDetail(@RequestParam("groupName") String groupName, Model model) {
		
		model.addAttribute("groupName", groupName);

		return "account/getGroupedGuestDetail";
	}
	
	
	

	
	@GetMapping("/guestChatting")
	
	public String guestChatting(@ModelAttribute TransactionVO transactionVO) {
		
		return "account/getGroupedGuestCount";
	}
	
	
	@GetMapping("/selectHanaAccount")
	public String selectHanaAccount() {
		
		return "account/selectHanaAccountList";
	} 
	
	
	
	
	@GetMapping("/selectOpenAccount")
	public String selectOpenAccount() {
		
		return "account/selectOpenAccountList";
	}
	
	
	@GetMapping("/unHanaTransactionListPage")
	public String unHanaTransactionListPage() {
		
		return "account/unHanaTransactionList";
	}
	
	
	
	
	
	
	
	
	
	
	@GetMapping("/test1")
	public String sample(Model model) {
		return "account/test1";
	}
	
	
	

}
