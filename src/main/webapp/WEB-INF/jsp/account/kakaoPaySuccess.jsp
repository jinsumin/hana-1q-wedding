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


</head>


<body>

	<jsp:include page="../include/coloredTopMenu.jsp" />
	

	<section
		class="min-vh-100 d-flex align-items-center justify-content-center">
		<div class="container">


			<div class="row mt-5">

				<div class="col-12 text-center">
					<a href="./../index.html"><img class="img-fluid w-30"
						src="img_2/oneQwedding_green.png"  style="height: 400px"></a>
				</div>
				
				<div
					class="col-12 text-center text-dark d-flex align-items-center justify-content-center">
					<div>


						<h1 class="mt-3 mb-5">
							<span class="font-weight-bolder text-primary">축의금
								송금완료
							</span>
						</h1>
						

<!-- 동영상 축하메시지 포인트 발급  -->


						<button id="videoPointModalButton"
							class="btn btn-sm btn-secondary" data-toggle="modal"
							data-target="#videoPointModal"
							style="background-color: #008485; border-color: #008485; height: 50px;font-size:20px!important">
							<i class="fa-solid fa-video"></i>&nbsp;동영상 축하메시지 보내기
						</button>



						<!-- Modal Content -->
						<div class="modal fade" id="videoPointModal" tabindex="-1" role="dialog"
							aria-labelledby="modal-notification" aria-hidden="true">
							<div class="modal-dialog modal-info modal-dialog-centered"
								role="document">
								<div class="modal-content bg-gradient-secondary">

									<div class="modal-body">
										<div class="py-3 text-center">
											<span class="modal-icon display-1-lg"><span
												class="fa-regular fa-circle-check"></span></span>
											<h2 class="h4 modal-title my-1" style="color: white; font-family: hanaM">동영상 축하메시지를 보내시면</h2><br>
											
											<h2 class="h4 modal-title my-1" style="color: white; font-family: hanaM">축의금의 2%를</h2><br>
											
											<h2 class="h4 modal-title my-1" style="color: white; font-family: hanaM">하나포인트로 환급해드립니다</h2>
											
										</div>
									</div>

									<div class="modal-footer">
										<button id="subModalClose-3" type="button"
											class="btn btn-sm btn-white" data-dismiss="modal">동영상 축하메시지 보내기</button>
									</div>

								</div>

							</div>
						</div>
						<!-- End of Modal Content -->



<!-- 자필 축하메시지 포인트 발급  -->


						<button id="imagePointModalButton"
							class="btn btn-sm btn-secondary" data-toggle="modal"
							data-target="#imagePointModal"
							style="background-color: #008485; border-color: #008485;height: 50px;font-size:20px!important">
							<i class="fa-solid fa-pen"></i>&nbsp;자필 축하메시지 보내기
						</button>


						<!-- Modal Content -->
						<div class="modal fade" id="imagePointModal" tabindex="-1" role="dialog"
							aria-labelledby="modal-notification" aria-hidden="true">
							<div class="modal-dialog modal-info modal-dialog-centered"
								role="document">
								<div class="modal-content bg-gradient-secondary">

									<div class="modal-body">
										<div class="py-3 text-center">
											<span class="modal-icon display-1-lg"><span
												class="fa-regular fa-circle-check"></span></span>
											<h2 class="h4 modal-title my-1" style="color: white; font-family: hanaM">자필 축하메시지를 보내시면</h2><br>
											
											<h2 class="h4 modal-title my-1" style="color: white; font-family: hanaM">축의금의 1%를</h2><br>
											
											<h2 class="h4 modal-title my-1" style="color: white; font-family: hanaM">하나포인트로 환급해드립니다</h2>
											
										</div>
									</div>

									<div class="modal-footer">
										<button onclick="location.href='https://hana-1q-wedding.vercel.app/canvas' " id="subModalClose-3" type="button"
											class="btn btn-sm btn-white" data-dismiss="modal">자필 축하메시지 보내기</button>
									</div>

								</div>

							</div>
						</div>
						<!-- End of Modal Content -->




					</div>
				</div>



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
	
	
let selectVideoMessage = function(){
		
		$.ajax({
		
			type : 'post',
			url : "/selectVideoMessage",
			data : {
				phonenumber : '${member.phonenumber}'
			},
			success:()=>{
				
				console.log("송공")
	
				/* 동영상 촬영 페이지로 이동해야한다. location.href = "https://hana-1q-wedding.vercel.app/#recorder-section"; */
	
			},
			error:()=>{
				console.log("최종실패임")	
			}						
		})
		
	}
	
	
let selectImageMessage = function(){
	
	$.ajax({
	
		type : 'post',
		url : "/selectImageMessage",
		data : {
			phonenumber : '${member.phonenumber}'
		},
		success:()=>{
			
			console.log("송공2")

			/* 웹 드로잉 페이지로 이동해야한다. location.href = "https://hana-1q-wedding.vercel.app/#recorder-section"; */

		},
		error:()=>{
			console.log("최종실패임")	
		}						
	})
	
}
	
	
	

	
	
	
			
	
	
	</script>









</body>





</html>