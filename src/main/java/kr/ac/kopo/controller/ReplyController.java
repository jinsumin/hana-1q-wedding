package kr.ac.kopo.controller;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.service.ReplyService;
import kr.ac.kopo.vo.ReplyVO;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class ReplyController {
	
	private final ReplyService replyService;
	
	@PostMapping("/reply")
	public void rewritePost(ReplyVO replyVO) {
		
		replyService.write(replyVO);
		
	}
	
	@GetMapping("/reply/{BoardNo}")
	public List<ReplyVO> getAllReply(@PathVariable("BoardNo") int boardNo) {
		
		List<ReplyVO> replyList = replyService.getAllReply(boardNo);
		
		return replyList;
		
	}
	
	@DeleteMapping("/reply/{BoardNo}/{ReplyNo}")
	public void delReply(@PathVariable("BoardNo") int boardNo, @PathVariable("ReplyNo") int replyNo) {
		
		replyService.deleteReply(boardNo, replyNo);
		
	}
	
	
}
