package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.vo.BoardVO;

@Mapper
public interface BoardDAO {
	
	public List<BoardVO> selectAll();
	public void insert(BoardVO boardVO);
	public BoardVO selectByNo(int boardNo);
	public void increaseReplyCnt(int boardNo);
	public void decreaseReplyCnt(int boardNo);
	public void increaseBoardViewCnt(int boardNo);
	
//	public int selectReplyCnt(int boardNo);
	
}
