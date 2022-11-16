<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<section>
            
            <div>
                
                <div>
                    <div>
                        <h2>Account Transfer Form</h2>
                    </div>
                </div>
                
                <div>
                    <div>
                        <form action="/account/otherTransferProcess" method="post">
                            
                         <div>
                          	<label for="name">이름 :</label>
                                <input name="name" type="text" placeholder="User Name"  value= ${member.name}>
                         </div>
                                
                         <div>
                                <label for="id"> ID :</label>
                                <input name="id" type="text"  value=${member.id}>
                          </div>
                          
                         <div>
                                <label for="phoneNumber"> 핸드폰번호 :</label>
                                <input name="phoneNumber" type="text"  value=${member.phonenumber}>
                          </div>
                          
                        <div>
								<label for="senderAccountNumber">보내는 사람 계좌 번호 :</label>
                                <input name="senderAccountNumber" type="text"  value=${senderAccountNumber}>
                         </div>
                                
                         <div>
								<label for="senderBankCode">보내는 사람 은행 코드 :</label>
                                <input name="senderBankCode" type="text" value = ${senderBankCode}>
                          </div>
                          
                          <div>
                                <label for="senderAccountPassword">보내는사람 계좌 비밀번호 :</label>                          
                                <input name="senderAccountPassword" type="password" >
                            </div>
                          
                           <div>
                               	<div>
										<label for="receiverBankCode">받는사람 은행 코드 :</label>
                               	
                                        <select name="receiverBankCode" id="floatingSelect">
                                            <option selected="">Select Receiver Bank Code :</option>
                                            <option name="2" value="2">HANA Bank(2)</option>
                                            <option name="9" value="9">SHINHAN Bank(9)</option>
                                            <option name="14" value="14">WOORI Bank(14)</option>
                                            <option name="20" value="20">KB Bank(20)</option>
                                        </select>
                               </div>
                           </div> 
            
                            <div>
								<label for="receiverAccountNumber">받는사람 계좌 번호 :</label>
                                <input name="receiverAccountNumber" type="text" placeholder="Enter your name..." />
                            </div>
                            
                            <div>
								<label for="transferAmount">이체 금액 :</label>
                                <input name="transferAmount" type="text" placeholder="Enter your name..." />
                            </div>
                            <br>
                                                                                               
                            <!-- Submit Button-->
                            <div>
                            <button type="submit" >계좌이체하기
                            </button>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
	</section>



</body>

</html>