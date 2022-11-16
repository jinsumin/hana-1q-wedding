package kr.ac.kopo.vo;

import lombok.Data;

@Data
public class ReplyVO {
	
	private int no;
	private int boardNo;
	private String content;
	private String writer;
	private String regDate;

}


