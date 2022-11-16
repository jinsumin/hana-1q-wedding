package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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

import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.GuestGroupVO;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.TransactionVO;
import lombok.RequiredArgsConstructor;
import oracle.ucp.proxy.annotation.Post;

@Controller
@RequiredArgsConstructor
public class MemberController {
	
	private final MemberService memberService;
	
	private final AccountService accountService;
	
	@GetMapping("/join")
	public String join(Model model) {
		MemberVO memberVO1 = new MemberVO();
		model.addAttribute("memberVO1", memberVO1);
		
		return "member/joinForm";
	}
	
	
	
	@PostMapping("/member/join")
	public String joinProcess(@Valid MemberVO memberVO) {
		
			System.out.println("memberVO:"+memberVO);
		
			memberService.joinProcess(memberVO);
			return "redirect:/hanaLogin";
	}
	
	
	
	
	
	@GetMapping("/hanaLogin")
	public String login(Model model) {
		return "member/hanaLogin";
	}
	
	
	
	@PostMapping("/hanaLogin")
	public String loginProcess(@ModelAttribute MemberVO memberVO, Model model, HttpSession session) {
		
	MemberVO member = memberService.login(memberVO);
	
	String phoneNumber = member.getPhonenumber();
	
	AccountVO accountVO = memberService.getAccount(phoneNumber);
	
	if(member == null) {

		model.addAttribute("msg", "fail");
		
		return "";
		
	} else {
		
		 session.setAttribute("member", member);
		 		 
		System.out.println("member.getType():"+member.getType());
			 	
		if (member.getType().equals("하객")) {
			
			session.setAttribute("guest", member);
			
			session.setAttribute("guestAccount", accountVO);
			
			MemberVO memGuest = (MemberVO)session.getAttribute("guest");
			
			AccountVO guestAccount = (AccountVO)session.getAttribute("guestAccount");
			
			
			System.out.println("나는 Guest 입니다:"+memGuest);
			
			System.out.println("나의 계좌는 :"+guestAccount);
			
			return "redirect:/";
			
		} else if (member.getType().equals("신랑")) {
			
			session.setAttribute("groom", member);
			
			session.setAttribute("groomAccount", accountVO);
			
			MemberVO memGroom = (MemberVO)session.getAttribute("groom");
			
			AccountVO groomAccount = (AccountVO)session.getAttribute("groomAccount");
			
			
			System.out.println("나는 Groom 입니다:"+memGroom);
			
			System.out.println("나의 계좌는 :"+groomAccount);
			
			return "redirect:/";
			
		} else if (member.getType().equals("신부")) {
			
			session.setAttribute("bride", member);
			
			session.setAttribute("brideAccount", accountVO);
		
			MemberVO memBride = (MemberVO)session.getAttribute("bride");
			
			AccountVO brideAccount = (AccountVO)session.getAttribute("brideAccount");
			
			
			System.out.println("나는 Bride 입니다:"+memBride);
			
			System.out.println("나의 계좌는 :"+brideAccount);
			
			return "redirect:/";
			
		} else {
		
			session.setAttribute("manager", member);

			MemberVO memManager = (MemberVO)session.getAttribute("manager");
			
			System.out.println("나는 Manager 입니다:"+memManager);
			

			return "member/managerPage";

		}
		
	}
			


	}
	
	@GetMapping("/marryAgreeForm")
	public String marryAgree(Model model) {
		return "member/marryAgreeForm";
	}
	
	
	@PostMapping("/member/openBanking")
	@ResponseBody
		public String updateOpenBanking(@RequestParam("phoneNum") String phoneNum, HttpSession session) {
		
		System.out.println("우메?");

			/*
			 * MemberVO member = (MemberVO)session.getAttribute("member");
			 */
		
			String phoneNumber = phoneNum;
			
			memberService.agreeOpenBanking(phoneNumber);
			
			return "동의";
		}
	
	@PostMapping("/member/marryAgreeGroom")
	@ResponseBody
		public String updateMarryAgreeGroom(@RequestParam("phoneNumber") String phoneNumber, HttpSession session) {
		
			memberService.agreeMarryGroom(phoneNumber);
			
			MemberVO member = memberService.getMember(phoneNumber);
			
			session.setAttribute("member", member);
			
			return member.getType();
		}
	
	@PostMapping("/member/marryAgreeBride")
	@ResponseBody
		public String updateMarryAgreeBride(@RequestParam("phoneNumber") String phoneNumber, HttpSession session) {
		
					
			memberService.agreeMarryBride(phoneNumber);
			
			MemberVO member = memberService.getMember(phoneNumber);
			
			session.setAttribute("member", member);
			
			return member.getType();
		}
	
	
	@GetMapping("/member/otherApiLogin")
	public String otherApiLogin(Model model) {
		
		return "member/otherApiLogin";
	}
	

	@PostMapping("/member/otherApiLogin")
	public String otherApiLoginProcess(@ModelAttribute MemberVO memberVO, Model model, HttpSession session) {
	
	MemberVO member = memberService.login(memberVO);
		
	if(member == null) {
		model.addAttribute("msg", "fail");
		return "member/otherApiLogin";
	}
	
	session.setAttribute("member", member);
	
	MemberVO mem = (MemberVO)session.getAttribute("member");
	
	return "account/otherList";

	}
	
	

	
	@PostMapping("/member/otherLogin")
	public String otherLoginProcess(@ModelAttribute MemberVO memberVO, Model model, HttpSession session) {
	
	MemberVO member = memberService.login(memberVO);
		
	if(member == null) {
		model.addAttribute("msg", "fail");
		return "member/otherLogin";
	}
	
	session.setAttribute("member", member);
	
	MemberVO mem = (MemberVO)session.getAttribute("member");
	
	return "account/otherWriteForm";
	}
	
	

	@GetMapping("/member/guest/other")
	public String guestOther() {
		
		return "/member/selectAccount";
	}
	
	
	@GetMapping("/test")
	public String test() {
		
		return "member/test";
	}
	
	
	
	@GetMapping("/member/logout")
	public String logoutProcess(HttpSession session) {
		
		session.invalidate();
				
		return "redirect:/";
		
	}
	
	@GetMapping("/member/otherjoin")
	public String otherJoin(Model model) {
		MemberVO memberVO1 = new MemberVO();
		model.addAttribute("memberVO1", memberVO1);
		
		return "member/otherJoinForm";
	}
	
	@PostMapping("/member/otherJoin")
	public String otherJoinProcess(@Valid @ModelAttribute("memberVO1") MemberVO memberVO, BindingResult result) {
		
		if(result.hasErrors()) {
			return "member/otherJoinForm";
		}else {
			memberService.joinProcess(memberVO);
			return "redirect:/member/otherLogin";
		}
	}
	
	@PostMapping("/member/guestGroup")
	@ResponseBody
	public GuestGroupVO guestGroupProcess(@RequestParam("guestlist1") String guestlist1,@RequestParam("guestlist2") String guestlist2,@RequestParam("guestlist3") String guestlist3, @RequestParam("guestlist4") String guestlist4, HttpSession session) {
		
		System.out.println("여기로안온다고?");
				
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		System.out.println("member도?:"+member);
		
		GuestGroupVO guestGroupVO = new GuestGroupVO();
		
		guestGroupVO.setMemberName(member.getName());
		guestGroupVO.setMemberId(member.getId());
		
		/* guestGroupVO.setMemberType(member.getType()); */
		
		guestGroupVO.setMemberPhoneNumber(member.getPhonenumber());
		
		guestGroupVO.setFirstGuestGroup(guestlist1);
		guestGroupVO.setSecondGuestGroup(guestlist2);
		guestGroupVO.setThirdGuestGroup(guestlist3);
		guestGroupVO.setFourthGuestGroup(guestlist4);
				
		memberService.guestGroupProcess(guestGroupVO);
		
		
		return guestGroupVO;
	}
	
	@PostMapping("/member/updateGuestGroupType")
	@ResponseBody
	public GuestGroupVO updateGuestGroupType(@RequestParam("memberType") String memberType, @RequestParam("memberPhoneNumber") String memberPhoneNumber, HttpSession session) {
		
		System.out.println("오ㅘ오아우아아앙따!!");
		
		GuestGroupVO guestGroupVO = new GuestGroupVO();
		
		guestGroupVO.setMemberType(memberType);
		guestGroupVO.setMemberPhoneNumber(memberPhoneNumber);
		
		memberService.updateGuestGroupType(guestGroupVO);
		

		return guestGroupVO;
	}
	
	

	
	@PostMapping("/member/getGuestGroup")
	@ResponseBody
	public List<GuestGroupVO> getGuestGroup(@RequestParam("phonenumber") String phonenumber, HttpSession session) {
		
		List<GuestGroupVO> guestGroupList = new ArrayList<>();
		
		System.out.println("phoneNumber:"+phonenumber);
		
		guestGroupList = memberService.getGuestGroup(phonenumber);
		
		System.out.println("guestGroupList:"+guestGroupList);
		
		return guestGroupList;
	}
	
	
	@GetMapping("member/getGuestMoney")
	@ResponseBody
	public List<TransactionVO> getGuestMoney(@RequestParam("groupName") String groupName){
		
		System.out.println("groupName:"+groupName);
		
		List<TransactionVO> guestMoneyList = memberService.getGuestMoney(groupName);
		
		System.out.println("guestMoneyList:"+guestMoneyList);
		
		
		return guestMoneyList;
	}
	
	@GetMapping("member/getGroupedGuestCount")
	@ResponseBody
	public List<Map<String,Object>> getGroupedGuestCount(){
		
		List<Map<String,Object>> groupedGuestCountList = memberService.getGroupedGuestCount();
		
		return groupedGuestCountList;
	}
	
	@GetMapping("member/getGroupedGuestSum")
	@ResponseBody
	public List<Map<String,Object>> getGroupedGuestSum(){
		
		List<Map<String,Object>> groupedGuestSumList = memberService.getGroupedGuestSum();
		
		System.out.println("groupedGuestSumList:"+groupedGuestSumList);
		
		return groupedGuestSumList; 
	}
	
	@PostMapping("/selectVideoMessage")
	@ResponseBody
	public String selectVideoMessage(@RequestParam("phonenumber") String phonenumber) {
			
	memberService.selectVideoMessage(phonenumber);
	
		return "";
	}
	

	@PostMapping("/selectImageMessage")
	@ResponseBody
	public String selectImageMessage(@RequestParam("phonenumber") String phonenumber,HttpSession session) {
			
	memberService.selectImageMessage(phonenumber);
	
	MemberVO memberVO = memberService.getMember(phonenumber);
	
	session.setAttribute("member", memberVO);
	
		return "";
	}
	
	@GetMapping("/hanaPoint")
	public String hanaPoint() {
		
		return "/member/hanaPoint";
	}
	
	
	
	@PostMapping("/hanaPointVideo")
	@ResponseBody
	public MemberVO hanaPointVideo(String phoneNumber) {
		
		System.out.println("일단여기1");
		
		List<MemberVO> memberVOList = memberService.hanaPointVideo(phoneNumber);
		
		System.out.println(memberVOList.get(0));
		
		return memberVOList.get(0);
	}
	
	
	
	@PostMapping("/hanaPointImage")
	@ResponseBody
	public MemberVO hanaPointImage(String phoneNumber) {
		
		System.out.println("일단여기2");
		
		List<MemberVO> memberVOList = memberService.hanaPointImage(phoneNumber);
		
		return memberVOList.get(0);
		
	}
	
	

	
	@PostMapping("/hanaPointUpdate")
	@ResponseBody
	public String hanaPointInsert(
MemberVO memberVO) {
		
		System.out.println("여기부터보자");
		
		memberService.hanaPointUpdate(memberVO);
		
		memberService.hanaPointUpdateAccount(memberVO);
		
		
		
		return "";
	}
	
	
	
	
	
	
	@GetMapping("/hanaMyPage")
	public String myPage() {
		
		
		
		return "member/myPage";
	}
	
	
	@PostMapping("/myPageAccount")
	@ResponseBody
	public AccountVO myPageAccount(@RequestParam("phonenumber") String phonenumber) {
		
		AccountVO accountVO = new AccountVO();
		
		accountVO = accountService.myPageAccount(phonenumber);
		
		return accountVO;
		
	}
	
	
	@PostMapping("/myPageMemberInfo")
	@ResponseBody
	public MemberVO myPageMemberInfo(@RequestParam("phonenumber") String phonenumber) {
		
		MemberVO memberVO = new MemberVO();
		
		memberVO = memberService.myPageMemberInfo(phonenumber);
		
		return memberVO;
	}
	
	
	
	@PostMapping("/updateAgreeOpenBanking")
	@ResponseBody
	public String updateAgreeOpenBanking(@RequestParam("phonenumber") String phonenumber, @RequestParam("openbanking") String openbanking, HttpSession session) {

		
		memberService.updateAgreeOpenBanking(phonenumber);
		
		MemberVO member = memberService.getMember(phonenumber);
		
		System.out.println("member :"+member );
		
		session.setAttribute("member", member);
		
		
		openbanking = "동의";
		
		System.out.println("openbanking:"+openbanking);
		
		return openbanking;
	}
	
	
	
	@GetMapping("/managerTransactionList")
	public String managerTransactionList() {
		
		
		return "member/managerTransactionList";
	}
	

	
	
	
	
	@GetMapping("/phoneCheck")
	@ResponseBody
	public String sendSMS() { // 휴대폰 문자보내기
		
		int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성

		memberService.certifiedPhoneNumber(randomNumber);
		
		return Integer.toString(randomNumber);
	
	}
	
	
	@GetMapping("/unHanaTransactionList")
	@ResponseBody
	public List<TransactionVO> unHanaTransactionList() {
		
		System.out.println("여기부터889");
		
		List<TransactionVO> unHanaTransactionList = new ArrayList<>();
		
		unHanaTransactionList = memberService.unHanaTransactionList();
		
		return unHanaTransactionList;
	}
	
	
	@PostMapping("/hanaPointNewAccount")
	@ResponseBody
	public MemberVO hanaPointNewAccount(String phoneNumber) {
		
		System.out.println("일단여기3뉴 어카운트");
		
		List<MemberVO> memberVOList = memberService.hanaPointNewAccount(phoneNumber);
		
		return memberVOList.get(0);
		
	}
	
	
	
	
	
	


	
}
