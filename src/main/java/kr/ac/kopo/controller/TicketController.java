package kr.ac.kopo.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class TicketController {

	@GetMapping("/ticket/issue")
	public String issueTicket() {
		
		return "/ticket/ticketComplete";
	}
	

}
