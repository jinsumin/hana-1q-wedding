<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>


<head>

<meta charset="UTF-8">
<title>Insert title here</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>

<link rel="stylesheet" type="text/css"
	href=" https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Pixel Pro Components - Tables</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Pixel Pro Components - Tables">
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
<meta property="og:title" content="Pixel Pro Components - Tables">
<meta property="og:description"
	content="Premium Bootstrap 4 UI Kit featuring over 1k components and 17 example pages.">
<meta property="og:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/pixel-pro/pixel-pro-preview.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url"
	content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Pixel Pro Components - Tables">
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

<link type="text/css" href="css_2/chart.css" rel="stylesheet">

<style>
.dataTables_wrapper .dataTables_paginate .paginate_button:hover {
  background: #008485 !important;
  color: #008485!important;
  border-radius: 4px;
  border: 1px solid #008485;
}

.page-item.active .page-link{
	background-color: #008485;
    border-color: #008485;
}

</style>


<style type="text/css">
.active>.page-link, .page-link.active {
	z-index: 3;
	color: var(- -bs-pagination-active-color);
	background-color: #008485;
	border-color: #008485;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>





</head>



<body>

	<jsp:include page="../include/coloredTopMenu.jsp" />
	
	

	<section class="ftco-section" style="margin-top: 200px;">
		<div class="container" style="max-width: 1340px;!important">

			<div class="row justify-content-center">

				<div class="col-md-6 text-center mt-1 mb-3">
					<h2 class="heading-section fs-1" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa">축의금 관리 시스템</h2>
				</div>

			</div>
			
			
<c:choose>

	<c:when test="${member.type eq '신랑' || member.type eq '신부' || member.type eq '관리자' }">
	
								<div class="btn-group mr-2 mb-2">

								<button class="btn btn-primary" type="button"  style="background-color: #008485; border-color: #008485; width: 200px; height: 50px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
									
									차트보기
								</button>

								<button type="button"
									class="btn btn-primary dropdown-toggle dropdown-toggle-split"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false" style="background-color: #008485; border-color: #008485;">
									<span class="fas fa-angle-down dropdown-arrow"></span> <span
										class="sr-only">Toggle Dropdown</span>
								</button>

								<div class="dropdown-menu">

									<a
										class="dropdown-item" href="#" onclick="getGroupedGuestSum()">소속별
										축의금 차트보기
									</a> 
									
									<a class="dropdown-item" href="#"
										onclick="getGroupedGuestCount()">소속별 하객수 차트보기
									</a>

								</div>

							</div>

							<div class="btn-group mr-2 mb-2">

								<select class="btn btn-primary" id="groupSelect"
									onchange="sangu2(this.value);" style="background-color: #008485; border-color: #008485; width: 200px; height: 50px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"><span class="mr-1"><span
										class="fas fa-book-open"></span></span>
										
									<option selected>세부차트보기</option>

								</select>

							</div>
	
	</c:when>


</c:choose>			


			<div class="row" style="width: 1400px;">
				<div class="col-md-12">
					<div class="card border-light p-4" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
						<div class="table-wrap" >



							<c:choose>
								<c:when test="${member.type eq '하객'}">

									<table id="data_list"
										class="table font-small table-hover"
										style="height: 900px; vertical-align: middle; width:1300px;!important">
										<thead class="thead-inverse">
											<tr>
												<th class="h6 py-4 border-0">축의 대상</th>
												<th class="h6 py-4 border-0">축의 대상 계좌번호</th>
												<th class="h6 py-4 border-0">축의 대상 이름</th>
												<th class="h6 py-4 border-0">축의 대상 은행코드</th>
												<th class="h6 py-4 border-0">축의 대상 핸드폰번호</th>
												<!-- <th class="h6 py-4 border-0">하객 소속</th> -->
												<th class="h6 py-4 border-0">축의금액</th>
												<th class="h6 py-4 border-0">축의금 송금일자</th>
												<!-- <th class="h6 py-4 border-0">축의금 환송여부</th> -->
												<!-- <th class="h6 py-4 border-0">축의금 환송하기</th> -->
												<th class="h6 py-4 border-0">채팅하기</th>
												<th class="h6 py-4 border-0">내가보낸 축하메시지보기</th>

											</tr>
										</thead>

										<tbody>

										</tbody>

									</table>

								</c:when>
								
								<c:when test="${member.type eq '신랑' || member.type eq '신부' }">
								
								<table id="data_list"
								class="table font-small table-hover"
								style="height: 500px; vertical-align: middle;">
								<thead class="thead-inverse">
									<tr>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">축의<br>대상</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">하객<br>계좌</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">하객<br>이름</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">은행<br>이름</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">하객<br>휴대전화</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">하객<br>소속</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">축의<br>금액</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">축의금<br>송금일자</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">축의금<br>환송여부</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">축의금<br>환송하기</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">채팅<br>하기</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">축하<br>메시지</th>

									</tr>
								</thead>

								<tbody>

								</tbody>

							</table>

								
								</c:when>


							</c:choose>


						</div>
					</div>
				</div>
			</div>

			<br>

			<div class="btn-group mr-2 mb-2">

				<button class="btn btn-primary" type="button"
					onclick="location.href='/'" style="background-color: #008485; border-color: #008485; width: 200px; height: 50px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
					<span class="mr-1"><span class="fas fa-book-open"></span></span>
					메인화면
				</button>

			</div>


			<!-- <figure class="highcharts-figure">
				<div id="container"></div>
				<p class="highcharts-description"></p>
			</figure>



			<figure class="highcharts-figure">
				<div id="container2"></div>
				<p class="highcharts-description">A variation of a 3D pie chart
					with an inner radius added. These charts are often referred to as
					donut charts.</p>
			</figure>



			<figure class="highcharts-figure">
				<div id="container3"></div>
				<p class="highcharts-description">Chart designed to show the
					difference between 0 and null in a 3D column chart. A null point
					represents missing data, while 0 is a valid value.</p>
			</figure>
 -->

			<div style="display: none;">
				<label for="parentname">이름 : </label><input id="parentsenderName"
					name="parentsenderName" type="text" class="form-control">


				<label for="parentsenderphoneNumber">핸드폰 번호</label><input
					id="parentsenderPhoneNumber" name="parentsenderPhoneNumber"
					value=${member.phonenumber
				} type="text" class="form-control">


				<label for="parentsenderAccountNumber">보내는사람 계좌번호</label> <input
					id="parentsenderAccountNumber" name="parentsenderAccountNumber"
					type="text" class="form-control"> <label
					for="parentsenderBankCode">보내는사람 은행코드</label> <input
					id="parentsenderBankCode" name="parentsenderBankCode" type="text"
					class="form-control"> <label for="senderAccountPassword">보내는사람
					계좌 비밀번호</label> <input name="senderAccountPassword" type="password"
					class="form-control"> <label for="parentreceiverName">받는사람
					이름</label> <input id="parentreceiverName" name="parentreceiverName"
					type="text" class="form-control"> <label
					for="parentreceiverAccountNumber">받는사람 계좌 번호</label> <input
					id="parentreceiverAccountNumber" name="parentreceiverAccountNumber"
					type="text" class="form-control"> <label
					for="parentreceiverBankCode">받는 사람 은행 코드 :</label> <input
					id="parentreceiverBankCode" name="parentreceiverBankCode"
					type="text" class="form-control"> <label
					for="parenttransferAmount">이체금액</label> <input
					id="parenttransferAmount" name="parenttransferAmount" type="text"
					class="form-control"> <label
					for="parentreceiverPhoneNumber">받는 사람 핸드폰번호 :</label> <input
					id="parentreceiverPhoneNumber" name="parentreceiverPhoneNumber"
					type="text" class="form-control">

			</div>


		</div>
	</section>


	<!--,하이차트  -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/highcharts-3d.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


	<script
		src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>

	<!-- Core -->

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
	<script src="node_modules_2/owl.carousel/dist/owl.carousel.min.js"></script>
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


	<script>
	
	function sangu2(input){
		
		let href = "/getGroupedGuestDetail?groupName="+input;
        let options = 'top=130, left=540, width=700, height=480, status=no, menubar=no, toolbar=no';
        
        //팝업창 생성
        var popup = window.open(href,'popup',options);
        
        //기본이벤트 제거
        event.preventDefault();
		
		
	}

	function sangu(input){
			console.log(input);
			
			groupName = input;
			
			let nameList = [];
			let transactionList = [];
			let transactionObject={};
			transactionObject.name="보낸 사람";
			transactionObject.data=[];
			
			fetch("member/getGuestMoney?groupName="+input)
			.then(res=>res.json())
			.then(res=>{
				console.log(res);
				let arrayList  = res;
				
				for(let i=0;i<arrayList.length;i++){
					nameList.push(arrayList[i].withdrawalName);
					transactionObject.data.push(arrayList[i].tranAmount);
				}
				
				transactionList.push(transactionObject);
				console.log("김병관: "+transactionList);
				console.log(" 김병관2"+nameList);
				
				return new Promise((resolve,reject)=>{
						
					resolve('성공');
		
				})
			})
			.then(res=>{
				Highcharts.chart('container', {
				    chart: {
				        type: 'column',
				        options3d: {
				            enabled: true,
				            alpha: 10,
				            beta: 25,
				            depth: 70
				        }
				    },
				    title: {
				        text: 'External trade in goods by country, Norway 2021'
				    },
				    subtitle: {
				        text: 'Source: ' +
				            '<a href="https://www.ssb.no/en/statbank/table/08804/"' +
				            'target="_blank">SSB</a>'
				    },
				    plotOptions: {
				        column: {
				            depth: 25
				        }
				    },
				    xAxis: {
				        categories: nameList,
				        labels: {
				            skew3d: true,
				            style: {
				                fontSize: '16px'
				            }
				        }
				    },
				    yAxis: {
				        title: {
				            text: 'NOK (million)',
				            margin: 20
				        }
				    },
				    tooltip: {
				        valueSuffix: ' MNOK'
				    },
				    series:transactionList
				});
				
			})
		}
		
		
		let getGroupedGuestCount =  function(){
			
					 let href = "/getGroupedGuestCount";
					 let options = 'top=100, left=390, width=700, height=480, status=no, menubar=no, toolbar=no';
			         
			         //팝업창 생성
			         var popup = window.open(href,'popup',options);
			         
			         //기본이벤트 제거
			         event.preventDefault();

			}
		
		
		let getGroupedGuestSum =  function(){
			
			
			 let href = "/getGroupedGuestSum";
	         let options = 'top=100, left=390, width=840, height=490, status=no, menubar=no, toolbar=no';
	         
	         //팝업창 생성
	         var popup = window.open(href,'popup',options);
	         
	         //기본이벤트 제거
	         event.preventDefault();
			
				
			}
		
		
		function showGroupList(){
			
			console.log("뭐 들어오니?"+$('.test12 '));
			for(let i=0;i<$('.test12').length;i++){
				console.log($('.test12')[i].defaultValue);
			}
			
		}
		
		
		function openRePayTransferForm(accountNumber){
			
			
			fetch("account/guestRePay?accountNumber="+accountNumber)
			.then(res=>res.json())
			.then(res=>{
				
				let transactionList = res;
				
					let reDepositAccountNum = transactionList[0].withdrawalAccountNum
					
					$("#parentreceiverAccountNumber").val(reDepositAccountNum)

					
					let reWithdrawalAccountNum = transactionList[0].depositAccountNum
					
					$("#parentsenderAccountNumber").val(reWithdrawalAccountNum)
					
					
					let reWithdrawalName = transactionList[0].depositName
					
					$("#parentsenderName").val(reWithdrawalName)
					
					
					let reDepositName =	transactionList[0].withdrawalName
					
					$("#parentreceiverName").val(reDepositName)
					
					
					let reDepositBankCode = transactionList[0].withdrawalBankCode
					
					$("#parentreceiverBankCode").val(reDepositBankCode)
					
					let reWithdrawalBankCode = transactionList[0].depositBankCode
					
					$("#parentsenderBankCode").val(reWithdrawalBankCode)
					
					let reTranAmount = transactionList[0].tranAmount
					
					$("#parenttransferAmount").val(reTranAmount)
					
					let reDepositPhoneNum = transactionList[0].withdrawalPhoneNum
					
					$("#parentreceiverPhoneNumber").val(reDepositPhoneNum)
					
					let reWithdrawalPhoneNum = transactionList[0].depositPhoneNum
					
					$("#parentsenderPhoneNumber").val(reWithdrawalPhoneNum)

			})
			
			 let href = "/rePayTransferForm";
		         let options = 'top=300, left=470, width=420, height=800, status=no, menubar=no, toolbar=no';
		         
		         //팝업창 생성
		         var popup = window.open(href,'popup',options);
		           
		         //기본이벤트 제거
		         event.preventDefault();
		         
		         popup.onbeforeunload = () => {
		        	 
		        	 let reDepositAccountNum = $("#parentreceiverAccountNumber").val()
		        	 
		        	 fetch("/changeRePay?reDepositAccountNum="+reDepositAccountNum)
		        	 .then(res =>{
						
		        		 location.reload();
		        		 
		        	 })
		        	 
		         }

		}
		
		
		
		let guestChatting =  function(data){
			
			
			let href = "/mychatt";
			let options = 'top=80, left=60, width=650, height=650, status=no, menubar=no, toolbar=no';
	        
	        
	        
	        //팝업창 생성
	        var popup = window.open(href,'popup',options);
	        
	        //기본이벤트 제거
	        event.preventDefault();
			
			
			
			
/* 			$.ajax({
			
				type: 'post',
				url: "/mychatt",
				data : {
					name : data
				},
				success : 
					location.href = "http://localhost:8080/mychatt",
				error : function(){
					alert('실패')
				}
				
			}) */
			
			
/* 				fetch("/mychatt?name="+data)
				.then(res=>{
					 location.href = "http://localhost:8080/mychatt?name="+data;
					console.log(res)
					console.log("오노???")
					
				}) */
											
			}
										


	</script>

	<script>
	
	$(document).ready(function(){
 		 
 		 if('${member.type}' == "신부"){
 			 
 			 
   			let array = [];
 			 
 		    $("#data_list").DataTable({
 		        ajax:{url:"/transactionBrideData?phoneNum="
 					+ '${bride.phonenumber}',dataSrc:''},
 		        columns:[
 		           {data:"memberType"},
 		           {data:"withdrawalAccountNum"},
 		           {data:"withdrawalName"},
 		           {data:"withdrawalBankCode"},
 		           {data:"withdrawalPhoneNum"},
 		           {data:"guestGroup"},
 		           {data:"tranAmount"},
 		           {data:"tranDate"},
 		           {data:"rePay"},
 		           {data:"withdrawalAccountNum"},
 		           {data:"withdrawalName"},
 		           {data:"withdrawalName"}
 		        ],
 		        columnDefs : [
 		            { targets: 0, width: '100px',},
 		            { targets: 1, width: '350px',
 		            	render:
 		            		function (data,type,row)
 		            		{
 		            			return "<input class=test12 name="+data+" value="+data+" style='display:none;'>"+data;
 		            		}
 		            },
 		            { targets: 2, width: '150px',},
 		            { targets: 3, width: '200px',},
 		            { targets: 4, width: '200px',},
 		            { targets: 5, width: '400px', className:"guestGroup", 
 		            	render: 
 		            		function (data, type, row) 
 		            		{ 
 		            			return "<input class=sangu id="+data+" value="+data+" style='display:none;'>"+data;
 		            		}
 		            },

 		            { targets: 6, width: '100px',},
 		            { targets: 7, width: '200px',},
 		            { targets: 8, width: '250px',
 		            	render:
 		            		function(data, type, row){
 		            		
 		            		if(data == '미완료'){
 		            			return `<button class="btn btn-danger" type="button">미완료</button>`
 		            		} else {
 		            			
 		            			return `<button class="btn btn-info" type="button">환송<br>완료</button>`
 		            		}
 		            		
 		            		
 		            	}
 		            	
 		            },
 		            { targets: 9, width: '250px',
 		            	render:
 		            		function(data,type,row)
 		            		{
 		            			if (row.rePay == '완료'){
 		            				
 		            				return `<button class="btn btn-primary"  type=button style="display:none" onclick=openRePayTransferForm('`+data+`')>환송<br>하기</button>`
 		            			} else {
 		            				
 		            				return `<button class="btn btn-primary"  type=button onclick=openRePayTransferForm('`+data+`')>환송<br>하기</button>`
 		            				
 		            			}
 		            	}
 		            },
 		            { targets: 10, width: '180px',
 		            	render:
 		            		function(data,type,row){
 		            		
 		            		return `<button class="btn btn-primary"  type=button onclick=guestChatting('`+data+`')>채팅<br>하기</button>`
 		            	}
 		            },
 		            { targets: 11, width: '180px',
 		            	render:
 							function(data,type,row){
 		            		
 		            		return `<button class="btn btn-primary"  type=button onclick=guestChatting('`+data+`')>축하<br>메시지</button>`
 		            	}
 		            		
 		            }
 		       ],
 		       
 		       language : {
 		           info : "현재 _START_-_END_ / 총 _TOTAL_건",
 		           loadingRecords: "로딩중...",
 		           processing : "잠시만 기다려 주세요...",
 		           search : "검색 : ",
 		           paginate : {
 		              "next" : "다음",
 		              "previous" : "이전"
 		           }
 		        },
 		        lengthChange: false,
 		        responsive:false
 		        

 		     })
 		     
      setTimeout(()=>{
     	 
     	 console.log($('.sangu').length);
     	 
     	 for(let i=0; i<$('.sangu').length;i++){
     		 if(i==0){
     		 	array.push($('.sangu')[i].defaultValue);
     		 }else{
     			 if(array.includes($('.sangu')[i].defaultValue)){
     				 console.log('넣지마');
     			 }else{
     				array.push($('.sangu')[i].defaultValue);  		    		 		 
     			 }
     		 }    		 
     	 }	

      },	12000)
      
      console.log("신부array:"+array);

 	setTimeout(()=>{
 	    	 for(let i=0;i<array.length;i++){
 	    	    	$('#groupSelect').append('<option value='+array[i]+'>'+array[i]+'</option>') 	
 	    	    }	 
 	},14000)
 	
  		 } else if ('${member.type}' == "신랑"){
 			 
 
  			let array = [];
			 
		    $("#data_list").DataTable({
		        ajax:{url:"/transactionGroomData?phoneNum="
					+ '${groom.phonenumber}',dataSrc:''},
		        columns:[
		           {data:"memberType"},
		           {data:"withdrawalAccountNum"},
		           {data:"withdrawalName"},
		           {data:"withdrawalBankCode"},
		           {data:"withdrawalPhoneNum"},
		           {data:"guestGroup"},
		           {data:"tranAmount"},
		           {data:"tranDate"},
		           {data:"rePay"},
		           {data:"withdrawalAccountNum"},
		           {data:"withdrawalName"},
		           {data:"withdrawalName"}
		        ],
		        columnDefs : [
		            { targets: 0, width: '100px',},
		            { targets: 1, width: '350px',
		            	render:
		            		function (data,type,row)
		            		{
		            			return "<input class=test12 name="+data+" value="+data+" style='display:none;'>"+data;
		            		}
		            },
		            { targets: 2, width: '150px',},
		            { targets: 3, width: '200px',},
		            { targets: 4, width: '200px',},
		            { targets: 5, width: '400px', className:"guestGroup", 
		            	render: 
		            		function (data, type, row) 
		            		{ 
		            			return "<input class=sangu id="+data+" value="+data+" style='display:none;'>"+data;
		            		}
		            },

		            { targets: 6, width: '100px',},
		            { targets: 7, width: '200px',},
		            { targets: 8, width: '250px',
		            	render:
		            		function(data, type, row){
		            		
		            		if(data == '미완료'){
		            			return `<button class="btn btn-danger" type="button">미완료</button>`
		            		} else {
		            			
		            			return `<button class="btn btn-info" type="button">환송<br>완료</button>`
		            		}
		            		
		            		
		            	}
		            	
		            },
		            { targets: 9, width: '250px',
		            	render:
		            		function(data,type,row)
		            		{
		            			if (row.rePay == '완료'){
		            				
		            				return `<button class="btn btn-primary"  type=button style="display:none" onclick=openRePayTransferForm('`+data+`')>환송<br>하기</button>`
		            			} else {
		            				
		            				return `<button class="btn btn-primary"  type=button onclick=openRePayTransferForm('`+data+`')>환송<br>하기</button>`
		            				
		            			}
		            	}
		            },
		            { targets: 10, width: '250px',
		            	render:
		            		function(data,type,row){
		            		
		            		return `<button class="btn btn-primary"  type=button onclick=guestChatting('`+data+`')>채팅<br>하기</button>`
		            	}
		            },
		            { targets: 11, width: '250px',
		            	render:
							function(data,type,row){
		            		
		            		return `<button class="btn btn-primary"  type=button onclick=guestChatting('`+data+`')>축하<br>메시지</button>`
		            	}
		            		
		            }
		       ],
		       
		       language : {
		           info : "현재 _START_-_END_ / 총 _TOTAL_건",
		           loadingRecords: "로딩중...",
		           processing : "잠시만 기다려 주세요...",
		           search : "검색 : ",
		           paginate : {
		              "next" : "다음",
		              "previous" : "이전"
		           }
		        },
		        lengthChange: false,
		        responsive:false
		        

		     })
		     
     setTimeout(()=>{
    	 
    	 console.log($('.sangu').length);
    	 
    	 for(let i=0; i<$('.sangu').length;i++){
    		 if(i==0){
    		 	array.push($('.sangu')[i].defaultValue);
    		 }else{
    			 if(array.includes($('.sangu')[i].defaultValue)){
    				 console.log('넣지마');
    			 }else{
    				array.push($('.sangu')[i].defaultValue);  		    		 		 
    			 }
    		 }    		 
    	 }	

     },	12000)
     
     console.log("신랑array:"+array);

	setTimeout(()=>{
	    	 for(let i=0;i<array.length;i++){
	    	    	$('#groupSelect').append('<option value='+array[i]+'>'+array[i]+'</option>') 	
	    	    }	 
	},14000)
	
 		 } else if ('${member.type}' == "하객"){
 			 
 			let array = [];
			 
		    $("#data_list").DataTable({
		        ajax:{url:"/transactionGuestData?phoneNum="
					+ '${guest.phonenumber}',dataSrc:''},
		        columns:[
		           {data:"memberType"},
		           {data:"depositAccountNum"},
		           {data:"depositName"},
		           {data:"depositBankCode"},
		           {data:"depositPhoneNum"},
		           /* {data:"guestGroup"}, */
		           {data:"tranAmount"},
		           {data:"tranDate"},
		           /* {data:"rePay"}, */
		           /* {data:"withdrawalAccountNum"}, */
		           {data:"depositName"},
		           {data:"depositName"}
		        ],
		        columnDefs : [
		            { targets: 0, width: '250px',},
		            { targets: 1, width: '300px',},
		            { targets: 2, width: '200px',},
		            { targets: 3, width: '200px',},
		            { targets: 4, width: '200px',},
		            { targets: 5, width: '200px',},
		            { targets: 6, width: '200px',},
		            { targets: 7, width: '150px',
		            	render:
		            		function(data,type,row){
		            		
		            		return `<button class="btn btn-primary"  type=button onclick=guestChatting('`+data+`')>채팅하기</button>`
		            	}
		            },
		            { targets: 8, width: '250px',
		            	render:
							function(data,type,row){
		            		
		            		return `<button class="btn btn-primary"  type=button onclick=guestChatting('`+data+`')>축하메시지보기</button>`
		            	}
		            }
		       ],
		       
		       language : {
		           info : "현재 _START_-_END_ / 총 _TOTAL_건",
		           loadingRecords: "로딩중...",
		           processing : "잠시만 기다려 주세요...",
		           search : "검색 : ",
		           paginate : {
		              "next" : "다음",
		              "previous" : "이전"
		           }
		        },
		        lengthChange: false,
		        responsive:false
		        
		     })
			
 		 } else {
 			 
 			let array = [];
			 
		    $("#data_list").DataTable({
		        ajax:{url:"/transactionManagerData?phoneNum="
					+ '${bride.phonenumber}',dataSrc:''},
		        columns:[
		           {data:"memberType"},
		           {data:"withdrawalAccountNum"},
		           {data:"withdrawalName"},
		           {data:"withdrawalBankCode"},
		           {data:"withdrawalPhoneNum"},
		           {data:"guestGroup"},
		           {data:"tranAmount"},
		           {data:"tranDate"},
		           {data:"rePay"},
		           {data:"withdrawalAccountNum"},
		           {data:"withdrawalName"},
		           {data:"withdrawalName"}
		        ],
		        columnDefs : [
		            { targets: 0, width: '250px',},
		            { targets: 1, width: '300px',
		            	render:
		            		function (data,type,row)
		            		{
		            			return "<input class=test12 name="+data+" value="+data+" style='display:none;'>"+data;
		            		}
		            },
		            { targets: 2, width: '200px',},
		            { targets: 3, width: '200px',},
		            { targets: 4, width: '200px',},
		            { targets: 5, width: '300px', className:"guestGroup", 
		            	render: 
		            		function (data, type, row) 
		            		{ 
		            			return "<input class=sangu id="+data+" value="+data+" style='display:none;'>"+data;
		            		}
		            },

		            { targets: 6, width: '200px',},
		            { targets: 7, width: '200px',},
		            { targets: 8, width: '250px',
		            	render:
		            		function(data, type, row){
		            		
		            		if(data == '미완료'){
		            			return `<button class="btn btn-danger" type="button">미완료</button>`
		            		} else {
		            			
		            			return `<button class="btn btn-info" type="button">환송완료</button>`
		            		}
		            		
		            		
		            	}
		            	
		            },
		            { targets: 9, width: '250px',
		            	render:
		            		function(data,type,row)
		            		{
		            			if (row.rePay == '완료'){
		            				
		            				return `<button class="btn btn-primary"  type=button style="display:none" onclick=openRePayTransferForm('`+data+`')>환송하기</button>`
		            			} else {
		            				
		            				return `<button class="btn btn-primary"  type=button onclick=openRePayTransferForm('`+data+`')>환송하기</button>`
		            				
		            			}
		            	}
		            },
		            { targets: 10, width: '250px',
		            	render:
		            		function(data,type,row){
		            		
		            		return `<button class="btn btn-primary"  type=button onclick=guestChatting('`+data+`')>채팅하기</button>`
		            	}
		            },
		            { targets: 11, width: '250px',
		            	render:
							function(data,type,row){
		            		
		            		return `<button class="btn btn-primary"  type=button onclick=guestChatting('`+data+`')>축하메시지보기</button>`
		            	}
		            		
		            }
		       ],
		       
		       language : {
		           info : "현재 _START_-_END_ / 총 _TOTAL_건",
		           loadingRecords: "로딩중...",
		           processing : "잠시만 기다려 주세요...",
		           search : "검색 : ",
		           paginate : {
		              "next" : "다음",
		              "previous" : "이전"
		           }
		        },
		        lengthChange: false,
		        responsive:false
		        

		     })
		     
     setTimeout(()=>{
    	 for(let i=0; i<$('.sangu').length;i++){
    		 if(i==0){
    		 	array.push($('.sangu')[i].defaultValue);
    		 }else{
    			 if(array.includes($('.sangu')[i].defaultValue)){
    				 console.log('넣지마');
    			 }else{
    				array.push($('.sangu')[i].defaultValue);  		    		 		 
    			 }
    		 }    		 
    	 }	

     },12000)

	setTimeout(()=>{
	    	 for(let i=0;i<array.length;i++){
	    	    	$('#groupSelect').append('<option value='+array[i]+'>'+array[i]+'</option>') 	
	    	    }	 
	},14000)
 			 
 			 
 		 }
 		
	});
	
	</script>
	
	


</body>

</html>