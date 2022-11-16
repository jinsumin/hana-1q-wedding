<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<style type="text/css">
#background-video {
	width: 100vw;
	height: 100vh;
	object-fit: cover;
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	z-index: -1;
}
</style>


</head>

<body>

	<main>

		<jsp:include page="../include/transparentTopMenu.jsp" />

		<jsp:include page="../include/preLoader.jsp" />

		<!-- Section -->
		<section
			class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark">

			<video id="background-video" autoplay loop muted>
				<source src="img_2/pages/hanati.mp4" type="video/mp4">
			</video>


			<div class="container">
				<div class="row justify-content-center">
					<div
						class="col-12 d-flex align-items-center justify-content-center">
						<div
							class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500"
							style="background-color: #ffffff !important; background-color: rgba(255, 255, 255, 0.95) !important;">
							<div class="text-center text-md-center mb-4 mt-md-0">
								<h1 class="mb-0 h3" style="font-family: hanaM">회원가입</h1>
							</div>

							<form action="/member/join" method="post">
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
												class="fa-solid fa-file-signature" style="color: #008485;"></span></span>
										</div>
										<input class="form-control" name="name" id="exampleInputIcon4"
											placeholder="NAME" type="text" aria-label="email adress">
									</div>
								</div>

								<div class="form-group">
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

									<!-- Form -->
									<div class="form-group">
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><span
													class="fas fa-unlock-alt" style="color: #008485;"></span></span>
											</div>
											<input class="form-control" id="exampleConfirmPassword7"
												placeholder="Confirm password" type="password"
												aria-label="Password" required>
										</div>
									</div>


									<div class="form-group">
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><span
													class="fa-solid fa-phone" style="color: #008485;"></span></span>
											</div>
											<input class="form-control" name="phonenumber"
												id="exampleConfirmPassword7" placeholder="Phone Number"
												type="text" aria-label="Password" required>
										</div>
									</div>


									<!-- Form -->
									<div class="form-group">
										<div class="input-group">

											<div class="input-group-prepend">
												<span class="input-group-text"><span
													class="fa-solid fa-person-half-dress" style="color: #008485;"></span></span>
											</div>


											<select name="sex" class="custom-select my-0 mr-sm-0"
												id="inlineFormCustomSelectPref" style="height: 45px">
												<option selected>성별 선택</option>
												<option value="남">남성</option>
												<option value="여">여성</option>

											</select>


										</div>

									</div>
									<!-- End of Form -->
									

								</div>
								<button id="joinbtn" type="submit"
									class="btn btn-block btn-primary">Sign in</button>
							</form>

							<div class="mt-3 mb-4 text-center">
								<span class="font-weight-normal"></span>
							</div>


						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<jsp:include page="../include/footer.jsp" />

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