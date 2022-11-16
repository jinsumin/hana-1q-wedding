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



<style type="text/css">
.active>.page-link, .page-link.active {
	z-index: 3;
	color: var(- -bs-pagination-active-color);
	background-color: #008485;
	border-color: #008485;
}
</style>

<style type="text/css">

table.dataTable {
    clear: both;
    margin-top: -8px !important;
    margin-bottom: 6px !important;
    max-width: none !important;
    border-collapse: separate !important;
    border-spacing: 0;
}

</style>

<style type="text/css">
.page-item.active .page-link {
    z-index: 3;
    color: #ffffff;
    background-color: #008485;
    border-color: #008485;
}

.form-control-sm {
    height: calc(1.5em + 0.8125rem);
    padding: 0;
    font-size: 0.875rem;
    line-height: 1.5;
    border-radius: 0.5rem;
}

</style>




</head>


<body>



	<section class="ftco-section" style="max-width: 1040px;!important">
		


		<div class="container" style="margin-left: 30px">

			<div class="row justify-content-center ml-5">

				<div class="col-7 text-center mt-1 mb-0">
					
					<h4 class="heading-section fs-1 m-0" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;font-size: 17px">
						타 은행 거래내역 목록
					</h4>
					
				</div>
				
			</div>
			
			<div class="row justify-content-left ml-0">
			
			<div class="col-md-6 text-left mt-3 mb-2 p-0">
				<button class="btn btn-primary" type="button" id="phoneChk"  style="background-color: #008485; border-color: #008485;font-size: 14px;height: 35px">신규계좌 개설 마케팅 SMS 보내기</button>
				
				
			</div>
			
			
			</div>
				
				

			<div class="row" style="width: 800px;">
				<div class="col-md-12">
					<div class="card border-light p-2" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
						<div class="table-wrap pe-0 ps-0">


							<table id="data_list_2"
								class="table font-small table-hover" style="height: 480px; vertical-align: middle; width: 730px!important;">


								<thead class="thead-inverse">
									<tr>

										<th class="h6 py-1 border-0" style="font-family: hanaM;font-size: 15px">번호</th>

										<th class="h6 py-1 border-0" style="font-family: hanaM;font-size: 15px">회원이름
										</th>
										
										<th class="h6 py-1 border-0" style="font-family: hanaM;font-size: 15px">거래은행
										</th>
										
										<th class="h6 py-1 border-0" style="font-family: hanaM;font-size: 15px">휴대전화
										</th>

										<th class="h6 py-1 border-0" style="font-family: hanaM;font-size: 15px">송금액</th>
										<th class="h6 py-1 border-0" style="font-family: hanaM;font-size: 15px">송금일자</th>

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
					style="background-color: #008485; border-color: #008485; width: 130px; height: 35px;font-size: 14px">
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

					alert("1Q 웨딩에서 타 은행을 이용한 고객들에게 신규계좌개설 마케팅 SMS가 발송되었습니다");

					$.ajax({
						type : "GET",
						url : "/phoneCheck",
						cache : false,
						success : function(data) {
							if (data == "error") {
								alert("휴대폰 번호가 올바르지 않습니다.")

								
							} else {

							}
						}
					});
				});

		
		
		$(document).ready(function() {

			$("#data_list_2").DataTable({

				ajax : {
					url : "/unHanaTransactionList",
					dataSrc : ''
				},
				scroller: false,
				columns : [

				{
					data : "tranNum"
				},

				{
					data : "withdrawalName"
				}, 
				{
					data : "withdrawalBankCode"
				}, 
				
				{
					data : "withdrawalPhoneNum"
				}, 
				{
					data : "tranAmount"
				}, 
				{
					data : "tranDate"
				}

				],

				columnDefs : [ {
					targets : 0
				}, {
					targets : 1
				}, {
					targets : 2
				}, {
					targets : 3
				}, {
					targets : 4
				}, {
					targets : 5
				} 
				],

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




</body>

</html>