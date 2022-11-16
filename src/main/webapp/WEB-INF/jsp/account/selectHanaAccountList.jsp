<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Pixel Pages - Sign up</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Pixel Pages - Sign up">
<meta name="author" content="Themesberg">
<meta name="description"
	content="Premium Bootstrap 4 UI Kit featuring over 1k components and 17 example pages.">
<meta name="keywords"
	content="bootstrap, bootstrap ui kit, accessibility, wcag bootstrap, bootstrap 4" />
<link rel="canonical"
	href="https://themesberg.com/product/ui-kits/pixel-pro-premium-bootstrap-4-ui-kit">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="og:title" content="Pixel Pages - Sign up">
<meta property="og:description"
	content="Premium Bootstrap 4 UI Kit featuring over 1k components and 17 example pages.">
<meta property="og:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/pixel-pro/pixel-pro-preview.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url"
	content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Pixel Pages - Sign up">
<meta property="twitter:description"
	content="Premium Bootstrap 4 UI Kit featuring over 1k components and 17 example pages.">
<meta property="twitter:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/pixel-pro/pixel-pro-preview.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120"
	href="img_2/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="img_2/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="img_2/favicon/favicon-16x16.png">
<link rel="manifest" href="img_2/favicon/site.webmanifest">
<link rel="mask-icon" href="img_2/favicon/safari-pinned-tab.svg"
	color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css"
	href="node_modules_2/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/68941cf0d3.js" crossorigin="anonymous"></script>

<!-- Prism -->
<link type="text/css" href="node_modules_2/prismjs/themes/prism.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css" href="css_2/pixel.css" rel="stylesheet">


<!-- ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


</head>


<body>

	<jsp:include page="../include/transparentTopMenuButton.jsp" />
	
	<jsp:include page="../include/heroSelectHanaAccountList.jsp" />
	
					
		<div class="row row d-flex justify-content-center" id="MyAccount" >
			

		</div>


	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="slick/slick.min.js"></script>


	<script>
	
    let withdrawalBankName;
    
    let agreeOpenBanking = function(value){
      
      $.ajax({
         type : 'post',
         url : "/member/openBanking?phoneNum="+'${member.phonenumber}',
         success : function(){
        	 $('#userpoint').empty()
				$('#userpoint').append('오픈뱅킹'+'${member.name}')
				
				withdrawalBankName = value;
        	 
        	 console.log(withdrawalBankName);
                
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
         },
            error : (e) => {
                 alert("실패" + e)
         }
      })
   };

       
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
                      alert('실패두');
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
             
             console.log(result);
             
             console.log("콜하나이다");
             
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
                
                $('#MyAccount').append('<div class="pricing-card" style="margin:40px; "><div class="card border-light text-center" style="width: 500px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);border-radius: 50px;"><div class="card-body" style="width: 500px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);border-radius: 50px;"><div class="col-12 d-flex align-items-center justify-content-center"><div class="d-flex justify-content-center"><div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 fmxw-400 item"><div class="ms-0 me-0 text-center text-md-center mb-5 mt-md-0 w-100"><img src="img_2/hanalogo.png" class="img-fluid image-sm" style="width:150px;height:180px"></div><form action="/accountTransferForm" method="post"><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-image-portrait" >&nbsp;<strong>이름 :</strong> &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="name" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+' ${member.name}'+' readonly ></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-list-ol" >&nbsp;<strong>계좌번호 :</strong>&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="accountNumber" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+accountNumber+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-phone">&nbsp;<strong>핸드폰번호 :</strong>&nbsp;&nbsp;</span></span></div><input class="form-control" name="phoneNumber" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+phoneNumber+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-regular fa-calendar" >&nbsp;<strong>계좌개설일 :</strong>&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankRegDate" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankRegDate+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-won-sign" >&nbsp;<strong>잔액 :</strong>&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankRegDate" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+balance+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-coins" >&nbsp;<strong>이체한도 :</strong>&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="transferLimit" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+transferLimit+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-brands fa-lastfm" >&nbsp;<strong>계좌명칭 :</strong>&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankAlias" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankAlias+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-code" >&nbsp;<strong>은행코드</strong>:&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankCode" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankCode+' readonly></div></div><button id="joinbtn" type="submit" class="btn btn-block btn-primary w-100" style="width: 500px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">축의금 송금하기</button></form></div></div></div></div></div>');

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
                
                if(bankCode =='2'){
                	
                	$('#MyAccount').append('<div class="pricing-card" style="margin:40px"><div class="card border-light text-center"><div class="card-body"><div class="col-12 d-flex align-items-center justify-content-center"><div class="d-flex justify-content-center"><div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 fmxw-400 item"><div class="ms-0 me-0 text-center text-md-center mb-5 mt-md-0 w-100"><img src="img_2/clients/airbnb.svg" class="img-fluid image-sm" alt="Airbnb logo"></div><form action="/accountTransferForm" method="post"><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-image-portrait" >&nbsp;<strong>이름 :</strong> &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="name" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+' ${member.name}'+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-list-ol" >&nbsp;<strong>계좌번호 :</strong>&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="accountNumber" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+accountNumber+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-phone">&nbsp;<strong>핸드폰번호 :</strong>&nbsp;&nbsp;</span></span></div><input class="form-control" name="phoneNumber" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+phoneNumber+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-regular fa-calendar" >&nbsp;<strong>계좌개설일 :</strong>&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankRegDate" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankRegDate+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-won-sign" >&nbsp;<strong>잔액 :</strong>&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankRegDate" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+balance+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-coins" >&nbsp;<strong>이체한도 :</strong>&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="transferLimit" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+transferLimit+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-brands fa-lastfm" >&nbsp;<strong>계좌명칭 :</strong>&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankAlias" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankAlias+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-code" >&nbsp;<strong>은행코드</strong>:&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankCode" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankCode+' readonly></div></div><button id="joinbtn" type="submit" class="btn btn-block btn-primary w-100">축의금 송금하기</button></form></div></div></div></div></div>');
                	
                } else if(bankCode =='9'){
                	
                	$('#MyAccount').append('<div class="pricing-card" style="margin:40px"><div class="card border-light text-center"><div class="card-body"><div class="col-12 d-flex align-items-center justify-content-center"><div class="d-flex justify-content-center"><div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 fmxw-400 item"><div class="ms-0 me-0 text-center text-md-center mb-5 mt-md-0 w-100"><img src="img_2/clients/airbnb.svg" class="img-fluid image-sm" alt="Airbnb logo"></div><form action="/accountTransferForm" method="post"><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-image-portrait" >&nbsp;<strong>이름 :</strong> &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="name" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+' ${member.name}'+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-list-ol" >&nbsp;<strong>계좌번호 :</strong>&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="accountNumber" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+accountNumber+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-phone">&nbsp;<strong>핸드폰번호 :</strong>&nbsp;&nbsp;</span></span></div><input class="form-control" name="phoneNumber" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+phoneNumber+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-regular fa-calendar" >&nbsp;<strong>계좌개설일 :</strong>&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankRegDate" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankRegDate+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-won-sign" >&nbsp;<strong>잔액 :</strong>&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankRegDate" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+balance+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-coins" >&nbsp;<strong>이체한도 :</strong>&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="transferLimit" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+transferLimit+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-brands fa-lastfm" >&nbsp;<strong>계좌명칭 :</strong>&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankAlias" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankAlias+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-code" >&nbsp;<strong>은행코드</strong>:&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankCode" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankCode+' readonly></div></div><button id="joinbtn" type="submit" class="btn btn-block btn-primary w-100">축의금 송금하기</button></form></div></div></div></div></div>');
                	
                } else if(bankCode =='14'){
                	
                	$('#MyAccount').append('<div class="pricing-card" style="margin:40px"><div class="card border-light text-center"><div class="card-body"><div class="col-12 d-flex align-items-center justify-content-center"><div class="d-flex justify-content-center"><div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 fmxw-400 item"><div class="ms-0 me-0 text-center text-md-center mb-5 mt-md-0 w-100"><img src="img_2/clients/airbnb.svg" class="img-fluid image-sm" alt="Airbnb logo"></div><form action="/accountTransferForm" method="post"><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-image-portrait" >&nbsp;<strong>이름 :</strong> &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="name" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+' ${member.name}'+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-list-ol" >&nbsp;<strong>계좌번호 :</strong>&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="accountNumber" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+accountNumber+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-phone">&nbsp;<strong>핸드폰번호 :</strong>&nbsp;&nbsp;</span></span></div><input class="form-control" name="phoneNumber" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+phoneNumber+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-regular fa-calendar" >&nbsp;<strong>계좌개설일 :</strong>&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankRegDate" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankRegDate+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-won-sign" >&nbsp;<strong>잔액 :</strong>&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankRegDate" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+balance+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-coins" >&nbsp;<strong>이체한도 :</strong>&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="transferLimit" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+transferLimit+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-brands fa-lastfm" >&nbsp;<strong>계좌명칭 :</strong>&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankAlias" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankAlias+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-code" >&nbsp;<strong>은행코드</strong>:&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankCode" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankCode+' readonly></div></div><button id="joinbtn" type="submit" class="btn btn-block btn-primary w-100">축의금 송금하기</button></form></div></div></div></div></div>');
                	
                } else{
                	
                	$('#MyAccount').append('<div class="pricing-card" style="margin:40px"><div class="card border-light text-center"><div class="card-body"><div class="col-12 d-flex align-items-center justify-content-center"><div class="d-flex justify-content-center"><div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 fmxw-400 item"><div class="ms-0 me-0 text-center text-md-center mb-5 mt-md-0 w-100"><img src="img_2/clients/airbnb.svg" class="img-fluid image-sm" alt="Airbnb logo"></div><form action="/accountTransferForm" method="post"><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-image-portrait" >&nbsp;<strong>이름 :</strong> &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="name" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+' ${member.name}'+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-list-ol" >&nbsp;<strong>계좌번호 :</strong>&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="accountNumber" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+accountNumber+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-phone">&nbsp;<strong>핸드폰번호 :</strong>&nbsp;&nbsp;</span></span></div><input class="form-control" name="phoneNumber" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+phoneNumber+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-regular fa-calendar" >&nbsp;<strong>계좌개설일 :</strong>&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankRegDate" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankRegDate+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-won-sign" >&nbsp;<strong>잔액 :</strong>&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankRegDate" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+balance+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-coins" >&nbsp;<strong>이체한도 :</strong>&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="transferLimit" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+transferLimit+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-brands fa-lastfm" >&nbsp;<strong>계좌명칭 :</strong>&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankAlias" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankAlias+' readonly></div></div><div class="form-group"><div class="input-group mb-4 w-100"><div class="input-group-prepend"><span class="input-group-text"><span class="fa-solid fa-code" >&nbsp;<strong>은행코드</strong>:&nbsp;&nbsp;&nbsp;</span></span></div><input class="form-control" name="bankCode" id="exampleInputIcon4" placeholder="ID" type="text" aria-label="email adress" value='+bankCode+' readonly></div></div><button id="joinbtn" type="submit" class="btn btn-block btn-primary w-100">축의금 송금하기</button></form></div></div></div></div></div>');
                	
                }
                
             }
         }
          
    </script>


	<!-- Core -->
	<script src="node_modules_2/jquery/dist/jquery.min.js"></script>
	<script src="node_modules_2/popper.js/dist/umd/popper.min.js"></script>
	<script src="node_modules_2/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="node_modules_2/headroom.js/dist/headroom.min.js"></script>

	<!-- Vendor JS -->
	<script src="node_modules_2/onscreen/dist/on-screen.umd.min.js"></script>
	<script src="node_modules_2/nouislider/distribute/nouislider.min.js"></script>
	<script
		src="node_modules_2/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script
		src="node_modules_2/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<script src="node_modules_2/waypoints/lib/jquery.waypoints.min.js"></script>
	<script src="node_modules_2/owl.carousel/dist/owl.carousel.js"></script>
	<script src="node_modules_2/jarallax/dist/jarallax.min.js"></script>
	<script src="node_modules_2/jquery.counterup/jquery.counterup.min.js"></script>
	<script
		src="node_modules_2/jquery-countdown/dist/jquery.countdown.min.js"></script>
	<script
		src="node_modules_2/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
	<script src="node_modules_2/prismjs/prism.js"></script>
	<script src="node_modules_2/chart.js/dist/Chart.min.js"></script>
	<script src="node_modules_2/vivus/dist/vivus.min.js"></script>
	<script src="node_modules_2/vivus/src/pathformer.js"></script>
	<script async defer src="https://buttons.github.io/buttons.js"></script>

	<!-- pixel JS -->
	<script src="js_2/pixel.js"></script>


</body>

</html>