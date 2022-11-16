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
<script src="https://kit.fontawesome.com/68941cf0d3.js"
	crossorigin="anonymous"></script>

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

	<jsp:include page="../include/heroSelectHanaMyPage.jsp" />


	<!-- Section -->
	<section class="section section-md"
		style="padding-top: 2rem; padding-bottom: 1rem">
		<div class="container">

			<div class="row justify-content-between mt-4">
				<div class="col-sm-12 col-md-6 col-lg-5 mb-5 mb-md-0">

					<!-- Icon Box -->
					<div class="icon-box">
						<div
							class="icon icon-shape icon-shape-secondary organic-radius mb-4">
							<span class="fas fa-tablet-alt"></span>
						</div>

						<h3 class="h4" style="font-family: hanaM;font-size: 50px;text-shadow: 2px 2px 2px #aaa;color: #014A5A">계좌정보</h3>

						<p class="my-3" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;font-size:20px;color: #014A5A">하나은행에 가입된 계좌정보를 확인하실 수 있습니다</p>

						<button class="btn btn-sm btn-primary animate-up-1"
							style="background-color: #008485; border-color: #008485; color: white;;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);"
							onclick="confirmAccount()">
							<span class="far fa-eye"></span> <span class="ml-1">계좌정보확인</span>
						</button>

					</div>
					<!-- End of Icon Box -->
				</div>



				<div class="col-sm-12 col-md-6 col-lg-5">
					<!-- Icon Box -->
					<div class="icon-box">
					
						<div
							class="icon icon-shape icon-shape-secondary organic-radius mb-4">
							<span class="fas fa-fire-alt"></span>
						</div>
						
						<h3 class="h4" style="font-family: hanaM;font-size: 50px;text-shadow: 2px 2px 2px #aaa;color: #014A5A">회원정보</h3>

						
						<p class="my-3" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa;font-size:20px;color: #014A5A">원큐 웨딩에 가입된 회원정보를 확인하실 수 있습니다</p>

						<button class="btn btn-sm btn-primary animate-up-1"
							style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);"
							onclick="confirmMemberInfo()">
							<span class="far fa-eye"></span> <span class="ml-1">회원정보확인</span>
						</button>

					</div>
					<!-- End of Icon Box -->
				</div>

			</div>
		</div>
	</section>
	<!-- End of section -->


	<div id="myAccountInfo"></div>



	<div id="myMemberInfo"></div>





	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="slick/slick.min.js"></script>



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

	<script type="text/javascript">
	

		let confirmAccount = function(){
			
			console.log('${member.hanapoint}');
			
			$.ajax({
				
				type :'post',
				url : "/myPageAccount",
				data : {
					phonenumber : '${member.phonenumber}'
				},
				success : (result) => {
					
					console.log("result:"+result);
					
					$('#myMemberInfo').empty();
					
					$('#myAccountInfo').empty();
					
					let accountVO = result;
					let balance = accountVO.balance;
					
					let calBalance = balance.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					
					let hanaPoint = ${member.hanapoint};
					
					
					console.log(hanaPoint)
					
					let accountNumber = accountVO.accountNumber;
					let bankAlias = accountVO.bankAlias;
					let openBanking = accountVO.openBanking;
					
					
					
					let name = accountVO.name;
					
					$('#myAccountInfo').append(`
							
							
						<div class="row justify-content-center text-center">
							<div class="col-sm-6 col-md-6">
								<h2 class="h1 font-weight-light mb-4 mt-7" style="font-family: hanaM; line-height: 60px;">
									소중한 <span class="font-weight-bold">`+name+`</span> 고객님의<br><span style="font-family: hanaM; line-height: 60px;background-color:#008485;border-radius: 1em;color: white; width: 100%">하나금융</span> 계좌 정보 입니다
								</h2>
								<p class="lead">This is your Hana Financial account information</p>
							</div>
						</div>
							
							
							<!-- Section -->
							<section class="section section-md"
								style="padding-top: 3rem; padding-bottom: 3rem">
								<div class="container">

									<div class="row align-items-center justify-content-between">

										<c:choose>

											<c:when test="${member.sex  eq '남'}">

												<div class="col-12 col-md-6">
													<img class="img-fluid" src="img_2/illustrations/groomstar.png"
														alt="illustration">
												</div>

											</c:when>

											<c:otherwise>

												<div class="col-12 col-md-6">
													<img class="img-fluid" src="img_2/illustrations/bridestar.png"
														alt="illustration">
												</div>

											</c:otherwise>


										</c:choose>


										<!-- card -->
										<div class="col-12 col-md-6 text-center text-md-left">
											<div class="card border-light"
												style="width: 500px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">

												<div class="card-footer border-top border-light p-4">

													<button class="btn btn-pill btn-outline-success" type="button"
														style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">계좌잔액</button>

													<div class="card-header bg-white p-1">

														<span class="d-block pt-2"> <span
															class="display-4 text-dark font-weight-lighter"> <span
																class="align-top font-large">\\ </span>`+calBalance+`

														</span>

														</span>

													</div>

													<div class="progress">
														<div class="progress-bar bg-primary" role="progressbar"
															aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%; animation: 3s ease 0s 1 normal none running animate-positive; opacity: 1;"></div>
													</div>


													<button class="btn btn-pill btn-outline-success" type="button"
														style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">하나포인트</button>

													<div class="card-header bg-white p-1">

														<span class="d-block pt-2"> <span
															class="display-4 text-dark font-weight-lighter">`+hanaPoint+`<span
																class="align-top font-large">P </span>

														</span>

														</span>

													</div>

													<div class="progress">
														<div class="progress-bar bg-primary" role="progressbar"
															aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%; animation: 3s ease 0s 1 normal none running animate-positive; opacity: 1;"></div>
													</div>


													<button class="btn btn-pill btn-outline-success" type="button"
														style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">계좌번호</button>

													<div class="card-header bg-white p-1">

														<span class="d-block pt-2"> <span
															class="display-4 text-dark font-weight-lighter">`+accountNumber+`

														</span>

														</span>

													</div>

													<div class="progress">
														<div class="progress-bar bg-primary" role="progressbar"
															aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%; animation: 3s ease 0s 1 normal none running animate-positive; opacity: 1;"></div>
													</div>


													<button class="btn btn-pill btn-outline-success" type="button"
														style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">통장명칭</button>


													<div class="card-header bg-white p-1">

														<span class="d-block pt-2">
															<h2 class="h4 mb-1 mt-0 mt-sm-0" style="font-family: hanaM">`+bankAlias+`</h2>

														</span>

													</div>

													<div class="progress">
														<div class="progress-bar bg-primary" role="progressbar"
															aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%; animation: 3s ease 0s 1 normal none running animate-positive; opacity: 1;"></div>
													</div>
													
													
													<button class="btn btn-pill btn-outline-success" type="button"
														style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">오픈뱅킹 동의여부</button>

													<div class="card-header bg-white p-1">

														<span class="d-block pt-2"> <span
															class="display-4 text-dark font-weight-lighter">`+openBanking+`

														</span>

														</span>

													</div>

													<div class="progress">
														<div class="progress-bar bg-primary" role="progressbar"
															aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%; animation: 3s ease 0s 1 normal none running animate-positive; opacity: 1;"></div>
													</div>
													
													

												</div>
											</div>
											<!-- card -->

										</div>
									</div>

								</div>
							</section>
							<!-- End of section -->

							`)

				},
				error : () => {
					console.log("쉬ㅣ팰");
				}
				
			})
			
		}
		
		
let confirmMemberInfo = function(){
			
			$.ajax({
				
				type :'post',
				url : "/myPageMemberInfo",
				data : {
					phonenumber : '${member.phonenumber}'
				},
				success : (result) => {
					
					console.log("result:"+result);
					
					$('#myMemberInfo').empty();
					
					$('#myAccountInfo').empty();
					
					let memberVO = result;
					
					let name = memberVO.name;
					
					let id = memberVO.id;
					
					let type = memberVO.type;
					
					let sex = memberVO.sex;
					
					let phonenumber = memberVO.phonenumber

					
					$('#myAccountInfo').append(`
							
							<div class="row justify-content-center text-center">
							<div class="col-sm-6 col-md-6">
								<h2 class="h1 font-weight-light mb-4 mt-7"
									style="font-family: hanaM; line-height: 60px;">
									소중한 <span class="font-weight-bold">`+name+`</span> 고객님의<br>
									<span
										style="font-family: hanaM; line-height: 60px; background-color: #008485; border-radius: 1em; color: white; width: 100%">하나금융</span>
									회원 정보 입니다
								</h2>
								<p class="lead">This is your Hana Financial account information</p>
							</div>
						</div>


						<!-- Section -->
						<section class="section section-md"
							style="padding-top: 3rem; padding-bottom: 3rem">
							<div class="container">

								<div class="row align-items-center justify-content-between">

									<c:choose>

										<c:when test="${member.sex  eq '남'}">

											<div class="col-12 col-md-6">
												<img class="img-fluid" src="img_2/illustrations/groomstar.png"
													alt="illustration">
											</div>

										</c:when>

										<c:otherwise>

											<div class="col-12 col-md-6">
												<img class="img-fluid" src="img_2/illustrations/bridestar.png"
													alt="illustration">
											</div>

										</c:otherwise>


									</c:choose>


									<!-- card -->
									<div class="col-12 col-md-6 text-center text-md-left">
										<div class="card border-light"
											style="width: 500px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">

											<div class="card-footer border-top border-light p-4">

												<button class="btn btn-pill btn-outline-success" type="button"
													style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">회원이름</button>

												<div class="card-header bg-white p-1">

													<span class="d-block pt-2"> <span
														class="display-4 text-dark font-weight-lighter"
														style="font-size: 27px">`+name+`</span>

													</span>

												</div>

												<div class="progress">
													<div class="progress-bar bg-primary" role="progressbar"
														aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
														style="width: 100%; animation: 3s ease 0s 1 normal none running animate-positive; opacity: 1;"></div>
												</div>


												<button class="btn btn-pill btn-outline-success" type="button"
													style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">아이디</button>

												<div class="card-header bg-white p-1">

													<span class="d-block pt-2"> <span
														class="display-4 text-dark font-weight-lighter"
														style="font-size: 27px">`+id+`</span>

													</span>

												</div>

												<div class="progress">
													<div class="progress-bar bg-primary" role="progressbar"
														aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
														style="width: 100%; animation: 3s ease 0s 1 normal none running animate-positive; opacity: 1;"></div>
												</div>


												<button class="btn btn-pill btn-outline-success" type="button"
													style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">회원유형</button>

												<div class="card-header bg-white p-1">

													<span class="d-block pt-2"> <span
														class="display-4 text-dark font-weight-lighter"
														style="font-size: 27px">`+type+`</span>

													</span>

												</div>

												<div class="progress">
													<div class="progress-bar bg-primary" role="progressbar"
														aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
														style="width: 100%; animation: 3s ease 0s 1 normal none running animate-positive; opacity: 1;"></div>
												</div>


												<button class="btn btn-pill btn-outline-success" type="button"
													style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">휴대전화</button>


												<div class="card-header bg-white p-1">

													<span class="d-block pt-2"> <span
														class="display-4 text-dark font-weight-lighter"
														style="font-size: 27px">`+phonenumber+`</span>

													</span>

												</div>

												<div class="progress">
													<div class="progress-bar bg-primary" role="progressbar"
														aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
														style="width: 100%; animation: 3s ease 0s 1 normal none running animate-positive; opacity: 1;"></div>
												</div>


												<button class="btn btn-pill btn-outline-success" type="button"
													style="background-color: #008485; border-color: #008485; color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">성별</button>

												<div class="card-header bg-white p-1">

													<span class="d-block pt-2"> <span
														class="display-4 text-dark font-weight-lighter"
														style="font-size: 27px">`+sex+`</span>

													</span>

												</div>

												<div class="progress">
													<div class="progress-bar bg-primary" role="progressbar"
														aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
														style="width: 100%; animation: 3s ease 0s 1 normal none running animate-positive; opacity: 1;"></div>
												</div>



											</div>
										</div>
										<!-- card -->

									</div>
								</div>

							</div>
						</section>
						<!-- End of section -->


							`)

				},
				error : () => {
					console.log("쉬ㅣ팰22");
				}
				
			})
			
		}
	
	
	</script>





</body>

</html>