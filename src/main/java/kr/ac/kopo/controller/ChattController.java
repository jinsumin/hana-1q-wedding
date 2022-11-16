package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChattController {
	
	@GetMapping("/mychatt")
	public String getChatt() {
		
		return "chatt/chatting";
	}
	
	
	@PostMapping("/mychatt")
	@ResponseBody
	public String chatt(@RequestParam("name") String name) {
		
		System.out.println("name:"+name);
		
		return "";
	}
	

	
	
	
	
	

}