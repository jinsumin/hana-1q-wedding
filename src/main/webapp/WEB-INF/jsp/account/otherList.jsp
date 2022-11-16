<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>

<body>

    <section>
            
       	<div>
       		<h2>Account List</h2>
                <hr/>
                
    <select onchange="selectBoxChange(this.value)" >
		<option value="none">SELECT BANK</option>
	 	<option value="hana_bank">HANA BANK Account</option>
	 	<option value="other_group">Other Banking Group Account</option>	
	</select>
                
                <div id="MyAccount">

                </div>
                
        </div>
        
        <br>
        
        <a href="/account/transactionList">거래내역</a>
        
    </section>
    
    <script>
			
    	let withdrawalBankName;
    	
    		let selectBoxChange = function(value){
    			
    			console.log(value);
    			
    			if(value === "hana_bank"){
    				
    				console.log("여기?")
    				
    				withdrawalBankName = value;
    				$.ajax({
    					type : 'post',
    					url : "/account/list",
    					data : {
    						phoneNumber : '${member.phonenumber}',
    						withdrawalBank : withdrawalBankName
    					},
    					success : callhana,
    					error : function(){
    						alert('실패');
    					}
    				})	
    			} else {
    				
    				withdrawalBankName = value;
    				
    				$.ajax({
    					type : 'post',
    					url : "/account/list",
    					data : {
    						phoneNumber : '${member.phonenumber}',    						
    						withdrawalBank : withdrawalBankName
    					},
    					success : callother,
    					error : function () {
    						alert('실패');
						}
    				})
    			}
    		}
    		
    		function callhana(result){
    			
    			$('#MyAccount').empty();
    			
    			for(let i = 0; i < result.length; i++){
    				let account = result[i];
    				let accountNumber = account.accountNumber;
    				let phoneNumber = account.phoneNumber;
    				let bankRegDate = account.bankRegDate;
    				let balance = account.balance;
    				let bankAlias = account.bankAlias;
    				let bankCode = account.bankCode;
    				let transferLimit = account.transferLimit;
    				
    				$('#MyAccount').append('<form action="/message/otherSelectMessage" method="post"><label for="senderAccountPassword">이름 :</label><input type="text" name="name" value ='+'${member.name}'+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">계좌번호 :</label><input type="text" name="accountNumber" value ='+accountNumber+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">핸드폰번호 :</label><input type="text" name="phoneNumber" value ='+phoneNumber+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">계좌개설일 :</label><input type="text" name="bankRegDate" value ='+bankRegDate+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">잔액 :</label><input type="text" name="balance" value ='+balance+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">이체한도 :</label><input type="text" name="transferLimit" value ='+transferLimit+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">계좌명칭 :</label><input type="text" name="bankAlias" value ='+bankAlias+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">은행코드 :</label><input type="text" name="bankCode" value ='+bankCode+' style="border:none; outline:none;" readonly><br><button type="submit">축하메시지와 함께 축의금 보내기</button></form><br>');
    				
    			}
    			 			    				
    		}
    		
    		function callother(result) {
    			
    			$('#MyAccount').empty();
    			
    			for(let i = 0; i < result.length; i++){
    				let account = result[i];
    				let accountNumber = account.accountNumber;
    				let phoneNumber = account.phoneNumber;
    				let bankRegDate = account.bankRegDate;
    				let balance = account.balance;
    				let bankAlias = account.bankAlias;
    				let bankCode = account.bankCode;
    				let transferLimit = account.transferLimit;
    				
    				$('#MyAccount').append('<form action="/account/transferForm" method="post"><label for="senderAccountPassword">이름 :</label><input type="text" name="name" value ='+'${member.name}'+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">계좌번호 :</label><input type="text" name="accountNumber" value ='+accountNumber+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">핸드폰번호 :</label><input type="text" name="phoneNumber" value ='+phoneNumber+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">계좌개설일 :</label><input type="text" name="bankRegDate" value ='+bankRegDate+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">잔액 :</label><input type="text" name="balance" value ='+balance+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">이체한도 :</label><input type="text" name="transferLimit" value ='+transferLimit+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">계좌명칭 :</label><input type="text" name="bankAlias" value ='+bankAlias+' style="border:none; outline:none;" readonly><br><label for="senderAccountPassword">은행코드 :</label><input type="text" name="bankCode" value ='+bankCode+' style="border:none; outline:none;" readonly><br><button type="submit">계좌이체</button></form><br>');
    					
    			}
			}
    		
    </script>
    
</body>

</html>