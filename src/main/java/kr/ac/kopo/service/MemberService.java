package kr.ac.kopo.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;


import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.GuestGroupVO;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.TransactionVO;
import lombok.RequiredArgsConstructor;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
@RequiredArgsConstructor
public class MemberService {
	
	private final MemberDAO memberDao;
	
	public MemberVO login(MemberVO memberVO) {
		return memberDao.login(memberVO);
	}
	
	public MemberVO getMember(String phoneNumber) {
		return memberDao.getMember(phoneNumber);
	}
	
	
	
	public void joinProcess(MemberVO memverVO) {
		memberDao.joinProcess(memverVO);
	}
	
	
	
	
	
	
	public void agreeOpenBanking(String phoneNumber) {
		memberDao.agreeOpenBanking(phoneNumber);
	}
		
	
	public void agreeMarryGroom(String phoneNumber) {
		memberDao.agreeMarryGroom(phoneNumber);	
	}
	
	public void agreeMarryBride(String phoneNumber) {
		memberDao.agreeMarryBride(phoneNumber);	
	}
	
	public void guestGroupProcess(GuestGroupVO guestGroupVO) {
		memberDao.insertGuestGroup(guestGroupVO);
	}

	public void updateGuestGroupType(GuestGroupVO guestGroupVO) {
		memberDao.updateGuestGroupType(guestGroupVO);
	}
	
	
	
	
	
	public List<GuestGroupVO> getGuestGroup(String phoneNumber) {
		List<GuestGroupVO> guestGroupList = memberDao.selectGuestGroup(phoneNumber);
		
		return guestGroupList;
	}
	
	public List<TransactionVO> getGuestMoney(String groupName){
		
		List<TransactionVO> guestGroupList = memberDao.selectGuestMoney(groupName);
		
		return guestGroupList;
	}
	
	
	public AccountVO getAccount(String phoneNumber) {
		
		AccountVO accountVO = memberDao.getAccount(phoneNumber);
		
		return accountVO;
	}
	
	
	
	
	public List<Map<String,Object>> getGroupedGuestCount(){
		List<Map<String,Object>> groupedGuestCountList = memberDao.getGroupedGuestCount();
		
		System.out.println("groupedGuestCountList:"+groupedGuestCountList);
		
		return groupedGuestCountList;
	}
	
	public List<Map<String,Object>> getGroupedGuestSum(){
		List<Map<String,Object>> groupedGuestSumList = memberDao.getGroupedGuestSum();
		
		System.out.println("groupedGuestSumList:"+groupedGuestSumList);
		
		return groupedGuestSumList;
	}
	
	
	
	
	public void selectVideoMessage(String phonenumber) {
		memberDao.selectVideoMessage(phonenumber);
	}
	
	public void selectImageMessage(String phonenumber) {
		memberDao.selectImageMessage(phonenumber);
	}
	
	
	public List<MemberVO> hanaPointVideo(String phoneNumber) {
		
		return memberDao.hanaPointVideo(phoneNumber); 
	}
	

	
	public List<MemberVO> hanaPointImage(String phoneNumber) {
		
		return memberDao.hanaPointImage(phoneNumber); 
	
	}
	
	public List<MemberVO> hanaPointNewAccount(String phoneNumber) {
		
		return memberDao.hanaPointNewAccount(phoneNumber); 
	
	}
	
	
	
	
	
	public void hanaPointUpdate(MemberVO memberVO) {
		
		memberDao.hanaPointUpdate(memberVO);
		
	}
	
	public void hanaPointUpdateAccount(MemberVO memberVO) {
		
		memberDao.hanaPointUpdateAccount(memberVO);
		
	}
	
	public void updateAgreeOpenBanking(String phonenumber) {
		
		memberDao.updateAgreeOpenBanking(phonenumber);
		
	}
	

	public MemberVO myPageMemberInfo(String phonenumber) {
		
		return memberDao.myPageMemberInfo(phonenumber);
		
	}
	

	public void certifiedPhoneNumber(int randomNumber) {
		String api_key = "NCSZMDCM2UQRQWIT";
	    String api_secret = "3EYSJBELU5NKUFG2PJOD3A3L4KPACFT9";
	    Message coolsms = new Message(api_key, api_secret);

		/*
		 * List<TransactionVO> unHanaTransactionList= memberDao.unHanaTransactionList();
		 * 
		 * System.out.println("unHanaTransactionList:??????????????????"+unHanaTransactionList);
		 */
	  // ????????? ???????????????, ??????, ????????????????????? ????????? vo??? ???????????? for?????? ?????????.
	    

	   	    
	    HashMap<String, String> params1 = new HashMap<String, String>();
	    params1.put("to", "01050114980");    // ??????????????????
	    params1.put("from", "01077106366");    // ??????????????????. ?????????????????? ??????,?????? ?????? ?????? ????????? ?????? ???
	    params1.put("type", "SMS");

	    params1.put("text", "????????? url??? ???????????? ????????? ??????????????? ?????? ???????????? 3%??? ?????????????????? ?????????????????????");
	    
	    
	    HashMap<String, String> params2 = new HashMap<String, String>();
	    params2.put("to", "01050114980");    // ??????????????????
	    params2.put("from", "01077106366");    // ??????????????????. ?????????????????? ??????,?????? ?????? ?????? ????????? ?????? ???
	    params2.put("type", "SMS");
 
	    params2.put("text", "http://hana-1q-wedding.vercel.app/account"); 

	    

		/*
		 * params.put("text", "[TEST] ???????????????" + "["+randomNumber+"]" + "?????????."); // ?????? ??????
		 * ??????
		 */
	    params2.put("app_version", "test app 1.2");

	    
	    params1.put("app_version", "test app 1.2"); // application name and version
	    

	    try {
	        JSONObject obj1 = (JSONObject) coolsms.send(params1);
	        
	        JSONObject obj2 = (JSONObject) coolsms.send(params2);
	        
	        System.out.println(obj1.toString());
	        
	        System.out.println(obj2.toString());

	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }
	    
	}
	
	
	public List<TransactionVO> unHanaTransactionList(){
		
		return memberDao.unHanaTransactionList();
	}
	
	
	public void updateNewAccount(String phonenumber) {
		
		memberDao.updateNewAccount(phonenumber);
		
	}
	
	public void updateNewAccountTable(String phonenumber) {
		
		memberDao.updateNewAccountTable(phonenumber);
		
	}
	
	
	
	
	
	

	
}
