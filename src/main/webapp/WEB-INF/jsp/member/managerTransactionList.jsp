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
<script src="https://kit.fontawesome.com/68941cf0d3.js"
	crossorigin="anonymous"></script>

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

	<jsp:include page="../include/heroManager.jsp" />

	<section class="ftco-section">

		<br>


		<div class="container" style="margin-left: 270px">

			<div class="row justify-content-center ml-9">

				<div class="col-md-6 text-center mt-6 mb-2">
					<h2 class="heading-section fs-1" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa">모든
						거래내역 조회</h2>
				</div>

			</div>

			<div class="btn-group mr-2 mb-2">

				<button onclick="unHanaTransactionListPage()" class="btn btn-primary" type="button"
					style="background-color: #008485; border-color: #008485; width: 200px; height: 50px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
					타 은행 거래내역 조회</button>

			</div>

			<div class="row" style="width: 1400px;">
				<div class="col-md-12">
					<div class="card border-light p-4" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
						<div class="table-wrap">



							<table id="data_list_1"
								class="table font-small table-hover"
								style="height: 900px; vertical-align: middle; width: 1300px;">


								<thead class="thead-inverse">
									<tr>

										<th class="h6 py-4 border-0" style="font-family: hanaM">번<br>호</th>

										<th class="h6 py-4 border-0" style="font-family: hanaM">보낸<br>회원
										</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM">받는<br>회원
										</th>

										<th class="h6 py-4 border-0" style="font-family: hanaM">보낸회원<br>계좌번호
										</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM">받는회원<br>계좌번호
										</th>

										<th class="h6 py-4 border-0" style="font-family: hanaM">보낸회원<br>은행코드
										</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM">받는회원<br>은행코드
										</th>

										<th class="h6 py-4 border-0" style="font-family: hanaM">보낸회원<br>휴대전화
										</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM">받는회원<br>휴대전화
										</th>

										<th class="h6 py-4 border-0" style="font-family: hanaM">송금액</th>
										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">송금일자</th>

										<th class="h6 py-4 border-0" style="font-family: hanaM;text-align: center;">SMS<br>
											전송
										</th>

									</tr>
								</thead>

								<tbody>

								</tbody>

							</table>

						</div>
					</div>
				</div>
			</div>

			<br>

			<div class="btn-group mr-2 mb-2">

				<button class="btn btn-primary" type="button"
					onclick="location.href='/'"
					style="background-color: #008485; border-color: #008485; width: 130px; height: 50px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
					<span class="mr-1"><span class="fas fa-book-open"></span></span>
					메인화면
				</button>

			</div>


		</div>
	</section>



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
		//휴대폰 번호 인증
		var code2 = "";
		$("#phoneChk").click(
				function() {
					alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
					var phone = $("#phone").val();
					$.ajax({
						type : "GET",
						url : "phoneCheck?phone=" + phone,
						cache : false,
						success : function(data) {
							if (data == "error") {
								alert("휴대폰 번호가 올바르지 않습니다.")
								$(".successPhoneChk").text("유효한 번호를 입력해주세요.");
								$(".successPhoneChk").css("color", "red");
								$("#phone").attr("autofocus", true);
							} else {
								$("#phone2").attr("disabled", false);
								$("#phoneChk2").css("display", "inline-block");
								$(".successPhoneChk").text(
										"인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
								$(".successPhoneChk").css("color", "green");
								$("#phone").attr("readonly", true);
								code2 = data;
							}
						}
					});
				});

		//휴대폰 인증번호 대조
		$("#phoneChk2").click(function() {
			if ($("#phone2").val() == code2) {
				$(".successPhoneChk").text("인증번호가 일치합니다.");
				$(".successPhoneChk").css("color", "green");
				$("#phoneDoubleChk").val("true");
				$("#phone2").attr("disabled", true);
			} else {
				$(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
				$(".successPhoneChk").css("color", "red");
				$("#phoneDoubleChk").val("false");
				$(this).attr("autofocus", true);
			}
		});

		$(document).ready(function() {

			let array = [];

			$("#data_list_1").DataTable({

				ajax : {
					url : "/transactionManagerData",
					dataSrc : ''
				},
				columns : [

				{
					data : "tranNum"
				},

				{
					data : "withdrawalName"
				}, {
					data : "depositName"
				},

				{
					data : "withdrawalAccountNum"
				}, {
					data : "depositAccountNum"
				},

				{
					data : "withdrawalBankCode"
				}, {
					data : "depositBankCode"
				},

				{
					data : "withdrawalPhoneNum"
				}, {
					data : "depositPhoneNum"
				},

				{
					data : "tranAmount"
				}, {
					data : "tranDate"
				},

				{
					data : "withdrawalName"
				}

				],

				columnDefs : [ {
					targets : 0
				}, {
					targets : 1,
					width : '6.2%'
				}, {
					targets : 2,
					width : '6.2%'
				}, {
					targets : 3,
					width : '10%'
				}, {
					targets : 4,
					width : '10%'
				}, {
					targets : 5,
					width : '8%'
				}, {
					targets : 6,
					width : '8%'
				}, {
					targets : 7
				}, {
					targets : 8
				}, {
					targets : 9,
					width : '7%'
				}, {
					targets : 10,
					width : '9%'
				}, {
					targets : 11,
					width : '6%',
					render:
						function(data, type, row){
						return `<button class="btn btn-primary"  type=button style="background-color: #008485; border-color: #008485; width: 100px; height: 50px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" >SMS 전송</button>
						`
					}
				} ],

				language : {
					info : "현재 _START_-_END_ / 총 _TOTAL_건",
					loadingRecords : "로딩중...",
					processing : "잠시만 기다려 주세요...",
					search : "검색 : ",
					paginate : {
						"next" : "다음",
						"previous" : "이전"
					}
				},
				lengthChange : false,
				responsive : false

			})

		});
	</script>
	
	
	
	
	<script type="text/javascript">
	
	let unHanaTransactionListPage = function() {
		
		let href = "/unHanaTransactionListPage;"
        let options = 'top=350, left=450, width=700, height=680, status=no, menubar=no, toolbar=no';
        
        //팝업창 생성
        var popup = window.open(href,'popup',options);
        
        //기본이벤트 제거
        event.preventDefault();

	}
		
		
	
	
	
	</script>


</body>

</html>