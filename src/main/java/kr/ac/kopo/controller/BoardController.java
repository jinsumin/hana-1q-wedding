package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class BoardController {
	
	private final BoardService boardService;
	
	@GetMapping("/board/list")
	public String allboard(HttpServletRequest request) {
		
		List<BoardVO> boardlist = new ArrayList<>();
		boardlist = boardService.selectAll();
		
		request.setAttribute("boardlist", boardlist);
		
		return "board/list";
		
	}
	
	@GetMapping("/board/write")
	public void writeGet(Model model) {
		BoardVO boardVO1 = new BoardVO();
		model.addAttribute("boardVO1",boardVO1);
	}
	
	@PostMapping("/board/write")
	public String writePost(@Valid @ModelAttribute("boardVO1") BoardVO boardVO, BindingResult result) {
		
		if(result.hasErrors()) {
			
			return "board/write";
		// 리소스의 위치이다.
		} else {
						
			boardService.write(boardVO);
			
			return "redirect:/board/list";
		// request url의 표현이다.
		}
		
	}
	
//	@GetMapping("/board/detail")
//	public String detail(HttpServletRequest request,@RequestParam("boardNo") int boardNo, Model model) {
//		
//		System.out.println("boardNo:"+boardNo);
//		
//		System.out.println("왓니?");
//		
//		BoardVO board = boardService.selectByNo(boardNo);
//		
//		System.out.println("detail:" + board);
//		
//		model.addAttribute("board", board);
//		
//		return "board/detail";
//		
//	}
	
	@GetMapping("/board/detail/{boardNo}")
	public String detail(@PathVariable("boardNo") int boardNo, Model model) {

		boardService.increaseBoardViewCnt(boardNo);
		
		BoardVO board = boardService.selectByNo(boardNo);
		
		model.addAttribute("board", board);
		
		return "board/detail";
		
	}
	
}
