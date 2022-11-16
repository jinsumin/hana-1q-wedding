package kr.ac.kopo.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.dao.BoardDAO;
import kr.ac.kopo.dao.ReplyDAO;
import kr.ac.kopo.vo.ReplyVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReplyService {
	
	private final ReplyDAO replyDao;
	private final BoardDAO boardDao;
	
	@Transactional
	public void write(ReplyVO replyVO) {
		
		boardDao.increaseReplyCnt(replyVO.getBoardNo());
		replyDao.insert(replyVO);
		
	}
	
//	@Transactional
	public List<ReplyVO> getAllReply(int boardNo){
		
//		int replyCnt = boardDao.selectReplyCnt(boardNo);
		List<ReplyVO> replyList = replyDao.selectAll(boardNo);
		
		return replyList;
	
	}
	
	@Transactional
	public void deleteReply(int boardNo,int replyNo) {
		
		boardDao.decreaseReplyCnt(boardNo);
		replyDao.delete(replyNo);
		
	}
	
	
	
		
}
