package kr.ac.kopo.vo;

import lombok.Data;

@Data
public class BoardVO {
	
	private int no;
	private String title;
	private String content;
	private String writer;
	private String regDate;
	private int viewCnt;
	private int replyCnt;

}
