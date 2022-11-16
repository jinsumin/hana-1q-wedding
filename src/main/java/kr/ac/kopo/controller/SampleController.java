package kr.ac.kopo.controller;

import kr.ac.kopo.service.KakaoPay;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.MemberVO;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.java.Log;
 
@Log
@RequiredArgsConstructor
public class SampleController {
		
   private final MemberService memberService;
	
    @Setter(onMethod_ = @Autowired)
    private KakaoPay kakaopay;
    
    
    @GetMapping("/kakaoPay")
    public String kakaoPayGet() {
        
    	return "account/kakaoPay";
    }
    
    @PostMapping("/kakaoPay")
    public String kakaoPay() {
        log.info("kakaoPay post............................................");
        
        System.out.println(kakaopay.kakaoPayReady());
        
        return "redirect:" + kakaopay.kakaoPayReady();
 
    }
    
    @GetMapping("/kakaoPaySuccess")
    public String kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model, HttpSession session) {
       
    	MemberVO member = (MemberVO) session.getAttribute("member");
    	
    	
    	String phonenumber = member.getPhonenumber();
    	
    	System.out.println("phonenumber:"+phonenumber);
    	
    	MemberVO member1 = memberService.getMember(phonenumber);
		
    	System.out.println("member1:"+member1);
    	
		session.setAttribute("member", member1);
    	
    	log.info("kakaoPaySuccess get............................................");
        log.info("kakaoPaySuccess pg_token : " + pg_token);
        
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
        
        System.out.println("info:"+kakaopay.kakaoPayInfo(pg_token));
        
        return "/account/kakaoPaySuccess";
    }
    
    
    @GetMapping("/sampleKakaoPaySuccess")
    public String sampleKakaoPaySuccess() {

        return "/account/kakaoPaySuccess";
    }
    
    
    
    
    
    
    
    @GetMapping("/kakaoPayConnect")
    public String kakaoPayConnnect() {
    	
    	
    	
    	return "account/kakaoPay";
    }
    
    
}
