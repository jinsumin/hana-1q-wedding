package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.vo.ReplyVO;

@Mapper
public interface ReplyDAO {
	
	public void insert(ReplyVO replyVO);
	public List<ReplyVO> selectAll(int boardNo);
	public void delete(int replyNo);
	
}
