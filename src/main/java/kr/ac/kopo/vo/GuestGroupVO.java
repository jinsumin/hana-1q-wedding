package kr.ac.kopo.vo;

import lombok.Data;

@Data
public class GuestGroupVO {
	
	private String memberType;
	private String memberName;
	private String memberId;
	private String memberPhoneNumber;
	
	private String firstGuestGroup;
	private String secondGuestGroup;
	private String thirdGuestGroup;
	private String fourthGuestGroup;
	private String lastGuestGroup;
	
}
