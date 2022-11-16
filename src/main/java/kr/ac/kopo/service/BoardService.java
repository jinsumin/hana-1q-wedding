package kr.ac.kopo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.BoardDAO;
import kr.ac.kopo.vo.BoardVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardService {
	
	private final BoardDAO boardDao;
	
	public List<BoardVO> selectAll(){
		
		List<BoardVO> list = new ArrayList<>();
		
		list = boardDao.selectAll();
		
		return list;
		
	}
	
	public void write(BoardVO boardVO) {
		
		boardDao.insert(boardVO);
		
	}
	
	public BoardVO selectByNo(int boardNo) {
		
		 BoardVO board = boardDao.selectByNo(boardNo);
		 
		 return board;
		
	}
	
	public void increaseBoardViewCnt(int boardNo) {
		
		boardDao.increaseBoardViewCnt(boardNo);
		
	}
	
}
