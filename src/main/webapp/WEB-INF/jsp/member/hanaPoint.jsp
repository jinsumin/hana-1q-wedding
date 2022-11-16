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


<!-- lottie -->

<script
	src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>


<!-- Prism -->
<link type="text/css" href="node_modules_2/prismjs/themes/prism.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css" href="css_2/pixel.css" rel="stylesheet">

<link type="text/css" href="css_2/chart.css" rel="stylesheet">




</head>


<body>

	<section
		class="min-vh-100 d-flex align-items-center justify-content-center">
		<div class="container">


			<div class="row justify-content-center">

				<div class="col-4 text-center mr-n8">
					<a href="./../index.html"><img class="img-fluid w-100"
						src="img_2/illustrations/groomstar.png"></a>
				</div>

				<div class="col-4 text-center d-flex justify-content-center align-items-center">
				
				<lottie-player src="https://assets1.lottiefiles.com/packages/lf20_tcozqiwz.json"  background="transparent"  speed="0.4"  style="width: 200px; height: 200px;"  loop  autoplay></lottie-player>

				</div>

				<div class="col-4 text-center ml-n8" style="margin-left: -50px;">
					<a href="./../index.html"><img class="img-fluid w-100"
						src="img_2/illustrations/bridestar.png"></a>
				</div>



				<div
					class="col-12 text-center text-dark d-flex align-items-center justify-content-center">
					<div>


						<h1 class="mt-4"
							style="font-family: hanaM; text-shadow: 2px 2px 2px #aaa; font-size: 70px;">
							<span class="font-weight-bolder text-primary">하나포인트 발급완료 </span>
						</h1>




						<p class="lead my-4 px-lg-11"
							style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 20px; color: gray;">
							지금 마이페이지로 이동하시면<br> 축의금에 대해 발급된 하나포인트를<br> 확인하실 수 있습니다
						</p>




						<button class="btn btn-primary" type="button"
							onclick="location.href='/hanaMyPage'"
							style="background-color: #008485; border-color: #008485; width: 150px; height: 50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
							<span class="mr-1"><span class="fa-solid fa-circle-left"></span></span>
							마이페이지
						</button>


						<button class="btn btn-primary" type="button"
							onclick="location.href='/'"
							style="background-color: #008485; border-color: #008485; width: 150px; height: 50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
							<span class="mr-1"><span class="fa-solid fa-circle-left"></span></span>
							메인페이지
						</button>




						<!-- 동영상 축하메시지 포인트 발급  -->


						<button onclick="" id="videoPointModalButton"
							class="btn btn-sm btn-secondary" data-toggle="modal"
							data-target="#videoPointModal"
							style="background-color: #008485; border-color: #008485;display: none; ">
							<i class="fa-solid fa-child-dress"></i>&nbsp;동영상 축하메시지 포인트
						</button>


						<!-- Modal Content -->
						<div class="modal fade" id="videoPointModal" tabindex="-1"
							role="dialog" aria-labelledby="modal-notification"
							aria-hidden="true" >
							<div class="modal-dialog modal-info modal-dialog-centered"
								role="document">
								<div class="modal-content bg-gradient-secondary">

									<div class="modal-body">
										<div class="py-3 text-center">
											<span class="modal-icon display-1-lg d-flex justify-content-center">
											
											<lottie-player src="https://assets3.lottiefiles.com/packages/lf20_8JqYfK.json"  background="transparent"  speed="0.7"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
											
											</span>
											
											<h3 class="display-2 mb-2" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;color: white; font-size: 40px">송금하신 축의금의 </h3>
											
											
											
											<h3 class="display-2 mb-2" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;color: white; font-size: 40px">2% 하나포인트 발급 완료</h3>
											
											<h3 class="display-2 mb-2" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;color: white; font-size: 40px">발급 완료</h3>
											
											
										</div>
									</div>

									<div class="modal-footer">
										<button id="subModalClose-3" type="button"
											class="btn btn-sm btn-white" data-dismiss="modal" style="width: 100px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">확인</button>
									</div>

								</div>

							</div>
						</div>
						<!-- End of Modal Content -->


						<button id="imagePointModalButton"
							class="btn btn-sm btn-secondary" data-toggle="modal"
							data-target="#imagePointModal"
							style="background-color: #008485; border-color: #008485;display: none; ">
							<i class="fa-solid fa-child-dress"></i>&nbsp;자필 축하메시지 포인트
						</button>
						
						
						<!-- 자필 축하메시지 포인트 발급  -->
						<div class="modal fade" id="imagePointModal" tabindex="-1"
							role="dialog" aria-labelledby="modal-notification"
							aria-hidden="true" >
							<div class="modal-dialog modal-info modal-dialog-centered"
								role="document">
								<div class="modal-content bg-gradient-secondary">

									<div class="modal-body">
										<div class="py-3 text-center">
											
											<span class="modal-icon display-1-lg d-flex justify-content-center">
											
											<lottie-player src="https://assets3.lottiefiles.com/packages/lf20_8JqYfK.json"  background="transparent"  speed="0.7"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
											
											</span>
											
											<h3 class="display-2 mb-2" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;color: white; font-size: 40px">송금하신 축의금의 </h3>
											
											<h3 class="display-2 mb-2" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;color: white; font-size: 40px">1%의 하나포인트</h3>
											
											<h3 class="display-2 mb-2" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;color: white; font-size: 40px">발급 완료</h3>
											
										</div>
									</div>

									<div class="modal-footer">
										<button id="subModalClose-3" type="button"
											class="btn btn-sm btn-white" data-dismiss="modal" style="width: 100px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">확인</button>
									</div>

								</div>

							</div>
						</div>
						
						
						<!-- 신규계좌가입-->
						
						<button id="newAccountPointModalButton"
							class="btn btn-sm btn-secondary" data-toggle="modal"
							data-target="#newAccountPointModal"
							style="background-color: #008485; border-color: #008485;display: none; ">
							<i class="fa-solid fa-child-dress"></i>&nbsp;신규계좌가입 포인트
						</button>


						<!-- Modal Content -->
						<div class="modal fade" id="newAccountPointModal" tabindex="-1"
							role="dialog" aria-labelledby="modal-notification"
							aria-hidden="true" >
							<div class="modal-dialog modal-info modal-dialog-centered"
								role="document">
								<div class="modal-content bg-gradient-secondary">

									<div class="modal-body">
										<div class="py-3 text-center">
											
											<span class="modal-icon display-1-lg d-flex justify-content-center">
											
											<lottie-player src="https://assets3.lottiefiles.com/packages/lf20_8JqYfK.json"  background="transparent"  speed="0.7"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
											
											</span>
											
											<h3 class="display-2 mb-2" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;color: white; font-size: 40px">송금하신 축의금의 </h3>
											
											<h3 class="display-2 mb-2" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;color: white; font-size: 40px">3%의 하나포인트</h3>
											
											<h3 class="display-2 mb-2" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;color: white; font-size: 40px">발급 완료</h3>
											
										</div>
									</div>

									<div class="modal-footer">
										<button id="subModalClose-3" type="button"
											class="btn btn-sm btn-white" data-dismiss="modal" style="width: 100px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">확인</button>
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
	
	$(document).ready(function(){
		
		$('#newAccountPointModalButton').trigger('click')
		
		console.log("오냐~!!~1123"+'${member}')
		
		console.log('${member}');
	
		if('${member.video}' == 'Y'){
			
			console.log("오냐~!!~4949"+'${member}')
				
			$.ajax({
				
				type: 'post',
				url : "/hanaPointVideo",
				data : {
					phoneNumber : '${member.phonenumber}'
				},
				success : (result) => {
					
					let memberVO = result;
					
						console.log(memberVO.hanapoint)
					
					$.ajax({
						
						type: 'post',
						url : "/hanaPointUpdate",
						data : {
							hanapoint : memberVO.hanapoint,
							phonenumber : memberVO.phonenumber
						},
						success : ()=>{
							
							console.log("썽꽁2 비디오 모달인데");
							
							$('#videoPointModalButton').trigger('click');
							
						},
						error: () => {
							console.log("쓀패2");
						}
						
					})

				},
				error : (e)=>{
					console.log("쓀패"+ e);
				}
				
			})
			
		} else if('${member.image}' == 'Y'){
			
			console.log("여기는오니 이미지인데??")
			
			$.ajax({
				
				type: 'post',
				url : "/hanaPointImage",
				data : {
					phoneNumber : '${member.phonenumber}'
				},
				success : (result) => {
					
					memberVO = result;
					
					console.log("memberVO:"+memberVO)
					
					$.ajax({
						
						type: 'post',
						url : "/hanaPointUpdate",
						data : {
							hanapoint : memberVO.hanapoint,
							phonenumber : memberVO.phonenumber
						},
						success : ()=>{
							
							console.log("썽꽁 이미지 모달")
							
							$('#imagePointModalButton').trigger('click')
							
						},
						error: () => {
							console.log("쓀패2")
						}
						
					})

				},
				error : ()=>{
					console.log("쓀패")
				}
				
			})
			
		}else if('${member.newaccount}' == 'Y'){
			
			
console.log("여기는오니 새계좌인데??")
			
			$.ajax({
				
				type: 'post',
				url : "/hanaPointNewAccount",
				data : {
					phoneNumber : '${member.phonenumber}'
				},
				success : (result) => {
					
					memberVO = result;
					
					console.log("memberVO:"+memberVO)
					
					$.ajax({
						
						type: 'post',
						url : "/hanaPointUpdate",
						data : {
							hanapoint : memberVO.hanapoint,
							phonenumber : memberVO.phonenumber
						},
						success : ()=>{
							
							console.log("썽꽁 뉴계좌모달")
							
							$('#newAccountPointModalButton').trigger('click')
							
						},
						error: () => {
							console.log("쓀패2 뉴계좌")
						}
						
					})

				},
				error : ()=>{
					console.log("쓀패 뉴계좌")
				}
				
			})
			
			
			
		}
		
	})
	
	

	
	</script>

	<!-- 	<script type="text/javascript">
	
	$(document).ready(function(){
		
		
		
		$('#videoPointModalButton').trigger('click')
				
	})
	

	</script>

 -->







</body>





</html>