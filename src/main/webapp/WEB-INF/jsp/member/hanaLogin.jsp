<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

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
<script src="https://kit.fontawesome.com/530bb32673.js"
	crossorigin="anonymous"></script>

<!-- Prism -->
<link type="text/css" href="node_modules_2/prismjs/themes/prism.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css" href="css_2/pixel.css" rel="stylesheet">

<link type="text/css" href="css_2/chart.css" rel="stylesheet">

</head>

<body>


	<jsp:include page="../include/transparentTopMenu.jsp" />
	
	<%-- 
	<jsp:include page="../include/preLoader.jsp" /> --%>


	<main>

		<!-- Section -->
		<section
			class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark"
			data-background="img_2/pages/hanati.png">
			<div class="container">
				<div class="row justify-content-center">
					<div
						class="col-12 d-flex align-items-center justify-content-center">
						<div
							class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500"
							style="background-color: #ffffff !important; background-color: rgba(255, 255, 255, 0.95) !important;">

							<div class="text-center text-md-center mb-4 mt-md-0">
								<h1 class="mb-0 h3">로그인</h1>
							</div>

							<form action="/hanaLogin" method="post" class="mt-4">

								<!-- Form -->
								<div class="form-group">

									<div class="input-group mb-4">
										<div class="input-group-prepend">
											<span class="input-group-text"><span
												class="fa-solid fa-image-portrait" style="color: #008485;"></span></span>
										</div>
										<input class="form-control" name="id" id="exampleInputIcon4"
											placeholder="ID" type="text" aria-label="email adress">
									</div>
								</div>


								<div class="form-group">

									<div class="input-group mb-4">
										<div class="input-group-prepend">
											<span class="input-group-text"><span
												class="fas fa-unlock-alt" style="color: #008485;"></span></span>
										</div>
										<input class="form-control" name="password"
											id="exampleInputPassword7" placeholder="Password"
											type="password" aria-label="Password" required>
									</div>
								</div>
								<!-- End of Form -->

								<button id="joinbtn" type="submit"
									class="btn btn-block btn-primary">Sign in</button>

							</form>

							

							<div class="btn-wrapper my-4 text-center">
								<button
									class="btn btn-icon-only btn-pill btn-outline-light text-facebook mr-2"
									type="button" aria-label="facebook button"
									title="facebook button">
									<span aria-hidden="true" class="fab fa-facebook-f"></span>
								</button>
								<button
									class="btn btn-icon-only btn-pill btn-outline-light text-twitter mr-2"
									type="button" aria-label="twitter button"
									title="twitter button">
									<span aria-hidden="true" class="fab fa-twitter"></span>
								</button>
								<button
									class="btn btn-icon-only btn-pill btn-outline-light text-facebook"
									type="button" aria-label="github button" title="github button">
									<span aria-hidden="true" class="fab fa-github"></span>
								</button>
							</div>


						</div>
					</div>
				</div>
			</div>
		</section>


	</main>

	<jsp:include page="../include/footer.jsp" />

<!-- 
	<script>
                                            function loginHandler(){
                                            	   const userName = document.getElementById("id").value;
                                            	   const userPassword = document.getElementById("password").value;

                                            	   $.ajax({
                                            	      url : "/hanaLogin",
                                            	      method : "post",
                                            	      data : {
                                            	         id : userName,
                                            	         password : userPassword,
                                            	      },success : (result) =>{
                                            	         location.href = "http://localhost:3000/HanaMainLogout";
                                            	      },error : (e) => {
                                            	         alert("실패당" + e);
                                            	      }
                                            	   })
                                            	};
    
                                            	
                                 	</script>

 -->

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



</body>




</html>