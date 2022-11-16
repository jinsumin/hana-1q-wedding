package kr.ac.kopo.vo;

import lombok.Data;

@Data
public class TransactionVO {
	
	private int tranNum;
	private String depositAccountNum;
	private String withdrawalAccountNum;
	private String depositName;
	private String withdrawalName;
	private String depositBankCode;
	private String withdrawalBankCode;
	private int tranAmount;
	private String tranDate;
	private String withdrawalPhoneNum;
	private String depositPhoneNum;
	private String guestGroup;
	private String memberType;
	private String rePay;
	
}
