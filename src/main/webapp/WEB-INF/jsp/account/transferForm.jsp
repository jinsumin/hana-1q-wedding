<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Pixel Pro Components - E-commerce</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Pixel Pro Components - E-commerce">
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
<meta property="og:title" content="Pixel Pro Components - E-commerce">
<meta property="og:description"
	content="Premium Bootstrap 4 UI Kit featuring over 1k components and 17 example pages.">
<meta property="og:image"
	content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/pixel-pro/pixel-pro-preview.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url"
	content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title"
	content="Pixel Pro Components - E-commerce">
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
	
<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>


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

	<jsp:include page="../include/heroAccountTransferForm.jsp" />

	<main>


		<div class="container">

			<div class="row mt-1 justify-content-center">

				<div class="col-12 col-md-7 col-lg-8">

					<div class="tab-content mt-4 mt-lg-5 d-flex justify-content-center" id="nav-tabContent-ecommerce">


						<div class="tab-pane fade show active" id="nav-credit-card"
							role="tabpanel" aria-labelledby="nav-credit-card-tab">


							<div class="card border-light p-3 mb-4" style="width: 600px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);border-radius: 50px;">

								<div class="card-header border-light p-3 " style="text-align:center; ">
									<h3 class="h5 mb-0" style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa; font-size: 35px; color: #014A5A">1Q Pay 축의금 송금</h3>
								</div>

								<div class="card-body p-4">

									<form>

										<div class="row justify-content-center">

											<div class="col-12 col-lg-10">
												<!-- Form -->

												<div class="form-group mb-4">
													<label for="name">축의대상 : </label><input id="memberType"
														name="memberType" type="text" class="form-control">
												</div>
												<!-- End of Form -->
											</div>


											<div class="col-12 col-lg-10">
												<!-- Form -->

												<div class="form-group mb-4">
													<label for="name">이름 : </label><input id="name" name="name"
														type="text" class="form-control" placeholder="User Name"
														value=${member.name}>
												</div>
												<!-- End of Form -->
											</div>


											<div class="col-12 col-lg-10">
												<!-- Form -->

												<div class="form-group mb-4">
													<label for="id">ID :</label> <input id="id" name="id"
														value=${member.id } type="text" class="form-control"
														placeholder="User ID">
												</div>
												<!-- End of Form -->
											</div>


											<div class="col-12 col-lg-10">
												<!-- Form -->

												<div class="form-group mb-4">
													<label for="phoneNumber">핸드폰 번호</label><input id="phoneNumber"
														name="phoneNumber"
														value=${member.phonenumber
														} type="text"
														class="form-control" placeholder="User ID"
														value=${member.phonenumber
														} required>
												</div>
												<!-- End of Form -->
											</div>


											<div class="col-12 col-lg-10">
												<!-- Form -->

												<div class="form-group mb-4">
													<label for="senderAccountNumber">보내는사람 계좌번호</label> <input id ="senderAccountNumber"
														name="senderAccountNumber"
														value=${senderAccountNumber
														} type="text"
														class="form-control" placeholder="보내는 사람의 계좌번호를 입력하세요"
														required>
												</div>
												<!-- End of Form -->
											</div>

											<div class="col-12 col-lg-10">
												<!-- Form -->

												<div class="form-group mb-4">
													<label for="senderBankCode">보내는사람 은행코드</label> <input id="senderBankCode"
														name="senderBankCode"
														value=${senderBankCode
														} type="text"
														class="form-control" placeholder="보내는 사람의 은행코드를 입력하세요"
														value=${senderBankCode
														} required>
												</div>
												<!-- End of Form -->
											</div>


											<div class="col-12 col-lg-10">
												<!--Form-->
												<div class="form-group">
													<label class="my-1 mr-2" for="guestGroupSelector">하객유형</label>
													<select id="guestGroupSelector" name="guestGroupSelector"
														class="custom-select my-1 mr-sm-2">
														<option selected>하객유형선택</option>

													</select>
												</div>
												<!-- End of Form -->
											</div>

											<div class="col-12 col-lg-10">
												<!-- Form -->

												<div class="form-group mb-4">
													<label for="senderAccountPassword">보내는사람 계좌 비밀번호</label> <input id="senderAccountPassword"
														name="senderAccountPassword" type="password"
														class="form-control" placeholder="보내는 사람의 계좌비밀번호를 입력하세요"
														required>
												</div>
												<!-- End of Form -->
											</div>

											<c:choose>

												<c:when test="${not empty bride}">

													<div class="col-12 col-lg-10">
														<!-- Form -->

														<div class="form-group mb-4">
															<label for="receiverAccountNumber">받는사람 계좌 번호</label> <input id="receiverAccountNumber"
																name="receiverAccountNumber" type="text"
																class="form-control" value=${brideAccount.accountNumber
																} required>
														</div>
														<!-- End of Form -->
													</div>

												</c:when>

												<c:when test="${not empty groom}">

													<div class="col-12 col-lg-10">
														<!-- Form -->

														<div class="form-group mb-4">
															<label for="receiverAccountNumber">받는사람 계좌 번호</label> <input id="receiverAccountNumber"
																name="receiverAccountNumber" type="text"
																class="form-control" placeholder="받는 사람의 계좌비밀번호를 입력하세요"
																value=${groomAccount.accountNumber } required>
														</div>
														<!-- End of Form -->
													</div>

												</c:when>

												<c:otherwise>



												</c:otherwise>


											</c:choose>


											<div class="col-12 col-lg-10">
												<!-- Form -->

												<div class="form-group mb-4">
													<label for="receiverBankCode">받는 사람 은행 코드 :</label> <input id="receiverBankCode"
														name="receiverBankCode" value="2" type="text"
														class="form-control" placeholder="받는 사람의 은행코드를 입력하세요"
														required>
												</div>
												<!-- End of Form -->
											</div>


											<div class="col-12 col-lg-10">
												<!-- Form -->

												<div class="form-group mb-4">
													<label for="transferAmount">이체금액</label> <input id="transferAmount"
														name="transferAmount" type="text" class="form-control"
														placeholder="이체금액을 입력하세요" required>
												</div>
												<!-- End of Form -->
											</div>

											<button type="button" class="btn btn-block btn-primary mb-3"
												data-toggle="modal" data-target="#modal-notification" style="background-color: #008485; border-color: #008485;width:170pt;height:40pt ;font-family: hanaM;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.5);font-size: 20px">송금하기</button>


										</div>

									</form>

								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>

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






	<script>
	
	$(document).ready(function(){
		
		if('${member.type}' == "하객" && '${bride}' != ''){
			
			con
			
			$.ajax({
				
				type : 'post',
				url : "/member/getGuestGroup",
				data : {
					phonenumber : '${bride.phonenumber}'
				},
				success:
					function(result){
						console.log(result);
						
						for(let i = 0; i < result.length; i++){
							let guestGroup = result[i];
							let memberType = guestGroup.memberType;
							let memberName = guestGroup.membetName;
							let memberId = guestGroup.membetId;
							let memberPhoneNumber = guestGroup.memberPhoneNumber;
							let firstGuestGroup = guestGroup.firstGuestGroup;
							let secondGuestGroup = guestGroup.secondGuestGroup;
							let thirdGuestGroup = guestGroup.thirdGuestGroup;
							let fourthGuestGroup = guestGroup.fourthGuestGroup;
							let lastGuestGroup = guestGroup.lastGuestGroup;
							
							$('#guestGroupSelector').append('<option value='+firstGuestGroup+'>'+firstGuestGroup+'</option>')
							$('#guestGroupSelector').append('<option value='+secondGuestGroup+'>'+secondGuestGroup+'</option>')
							$('#guestGroupSelector').append('<option value='+thirdGuestGroup+'>'+thirdGuestGroup+'</option>')
							$('#guestGroupSelector').append('<option value='+fourthGuestGroup+'>'+fourthGuestGroup+'</option>')
							$('#guestGroupSelector').append('<option value='+lastGuestGroup+'>'+lastGuestGroup+'</option>')
							
						
							$('#memberType').val(memberType);
							
						}
									
				},
				error : function () {
	                 alert('실패');
	             }
			})
			
		} else {
			
			$.ajax({
				
				type : 'post',
				url : "/member/getGuestGroup",
				data : {
					phonenumber : '${groom.phonenumber}'
				},
				success:
					function(result){
						console.log(result);
						
						for(let i = 0; i < result.length; i++){
							let guestGroup = result[i];
							let memberType = guestGroup.memberType;
							let memberName = guestGroup.membetName;
							let memberId = guestGroup.membetId;
							let memberPhoneNumber = guestGroup.memberPhoneNumber;
							let firstGuestGroup = guestGroup.firstGuestGroup;
							let secondGuestGroup = guestGroup.secondGuestGroup;
							let thirdGuestGroup = guestGroup.thirdGuestGroup;
							let fourthGuestGroup = guestGroup.fourthGuestGroup;
							let lastGuestGroup = guestGroup.lastGuestGroup;
							
							$('#guestGroupSelector').append('<option value='+firstGuestGroup+'>'+firstGuestGroup+'</option>')
							$('#guestGroupSelector').append('<option value='+secondGuestGroup+'>'+secondGuestGroup+'</option>')
							$('#guestGroupSelector').append('<option value='+thirdGuestGroup+'>'+thirdGuestGroup+'</option>')
							$('#guestGroupSelector').append('<option value='+fourthGuestGroup+'>'+fourthGuestGroup+'</option>')
							$('#guestGroupSelector').append('<option value='+lastGuestGroup+'>'+lastGuestGroup+'</option>')
							
						
							$('#memberType').val(memberType);
							
						}
									
				},
				error : function () {
	                 alert('실패');
	             }
			})
			
		}
	})
	
	
	let selectVideoMessage = function(){
		
		let name = document.getElementById("name").value;
		let id = document.getElementById("id").value;
		let phoneNumber = document.getElementById("phoneNumber").value;
		let senderAccountNumber = document.getElementById("senderAccountNumber").value;
		let receiverAccountNumber = document.getElementById("receiverAccountNumber").value;
		let senderBankCode = document.getElementById("senderBankCode").value;
		let receiverBankCode = document.getElementById("receiverBankCode").value;
		let transferAmount = document.getElementById("transferAmount").value;
		let memberType = document.getElementById("memberType").value;
		let guestGroupSelector = document.getElementById("guestGroupSelector").value;
		
		console.log(guestGroupSelector);
		
		$.ajax({
		
			type : 'post',
			url : "/selectVideoMessage",
			data : {
				phonenumber : '${member.phonenumber}'
			},
			success:()=>{
				
				console.log("쉬부레")
				
				console.log(name);
				
				console.log(senderAccountNumber);

				$.ajax({
					type : 'post',
					url : "/accountTransferProcess",
					data : {
						
						name : name,
						id : id,
						phoneNumber : phoneNumber,
						senderAccountNumber : senderAccountNumber,
						receiverAccountNumber : receiverAccountNumber,
						senderBankCode : senderBankCode,
						receiverBankCode : receiverBankCode,
						transferAmount : transferAmount,
						memberType : memberType,
						guestGroupSelector : guestGroupSelector
						
					},
					success: ()=>{
						
						console.log("비디오촬영완료!!!Y")
						
						location.href = "https://hana-1q-wedding.vercel.app/recorder";
					},
						
					error: () =>{
						console.log("안됐다ㅜ")
					}
						
				})
				
			},
			error:()=>{
				console.log("최종실패임")	
			}						
		})
		
	}
	
	
	let selectImageMessage = function(){
		
		let name = document.getElementById("name").value;
		let id = document.getElementById("id").value;
		let phoneNumber = document.getElementById("phoneNumber").value;
		let senderAccountNumber = document.getElementById("senderAccountNumber").value;
		let receiverAccountNumber = document.getElementById("receiverAccountNumber").value;
		let senderBankCode = document.getElementById("senderBankCode").value;
		let receiverBankCode = document.getElementById("receiverBankCode").value;
		let transferAmount = document.getElementById("transferAmount").value;
		let memberType = document.getElementById("memberType").value;
		let guestGroupSelector = document.getElementById("guestGroupSelector").value;
		
		console.log(guestGroupSelector);
		
		$.ajax({
		
			type : 'post',
			url : "/selectImageMessage",
			data : {
				phonenumber : '${member.phonenumber}'
			},
			success:()=>{
				
				console.log('${member}');
			
				$.ajax({
					type : 'post',
					url : "/accountTransferProcess",
					data : {
						
						name : name,
						id : id,
						phoneNumber : phoneNumber,
						senderAccountNumber : senderAccountNumber,
						receiverAccountNumber : receiverAccountNumber,
						senderBankCode : senderBankCode,
						receiverBankCode : receiverBankCode,
						transferAmount : transferAmount,
						memberType : memberType,
						guestGroupSelector : guestGroupSelector
						
					},
					success: ()=>{
						
						console.log("이미지작성완료!!!Y")
						
 						location.href = "https://hana-1q-wedding.vercel.app/canvas";
					},
						
					error: () =>{
						console.log("안됐다ㅜ22")
					}
						
				})
				
			},
			error:()=>{
				console.log("최종실패임222")	
			}						
		})
		
	}
	
	
	

	</script>





	<!-- modal -->


	<div class="modal fade" id="modal-notification" tabindex="-1"
		role="dialog" aria-labelledby="modal-notification" aria-hidden="true">
		<div class="modal-dialog modal-info modal-dialog-centered"
			role="document">
			<div class="modal-content bg-gradient-secondary">
				<div class="modal-header">
					<button id=finalbtn type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				
				<div class="modal-body">
					<div class="py-0 text-center">
						<span class="modal-icon display-1-sm d-flex justify-content-center">
						<lottie-player src="https://assets8.lottiefiles.com/packages/lf20_cyyxrhlr.json"  background="transparent"  speed="0.8"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
						</span>
						
						<h2 class="modal-title my-3" style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 23px;">축의금 송금이 완료되었습니다</h2>
						
						<h2 class="modal-title my-1" style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 23px;">신랑 신부에게</h2>						

						<h2 class="h4 modal-title my-0" style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 23px;"><br> 동영상 축하메시지를 보내시면</h2>
						
						<h2 class="h4 modal-title my-3" style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 23px;">축의금의 2%</h2>
						
						<h2 class="h4 modal-title my-3" style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 23px;">자필 축하메시지를 보내시면</h2>
						
						<h2 class="h4 modal-title my-3" style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 23px;">축의금의 1%</h2>
					
						<h2 class="h4 modal-title my-3" style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 23px;">하나포인트로 환급해드립니다</h2>


					</div>
				</div>

				<div class="modal-footer modal-footer d-flex justify-content-center">

					<button id=subModal style="background-color: #04515C; border-color: #04515C; width: 180px"
								type="button" class="btn btn-primary" onclick="selectImageMessage()">
						자필 축하메시지<br>보내기	
					</button> 
						
						<button id=subModal style="background-color: #04515C; border-color: #04515C; width: 180px"
								type="button" class="btn btn-primary" onclick="selectVideoMessage()">
						동영상 축하메시지<br>보내기
						
						</button>
						
				</div>

			</div>
		</div>
	</div>
	<!-- End of Modal Content -->
	
<script>

$('#subModal').on('click', function(){
	$('#finalbtn').trigger('click')
})

</script>






</body>

</html>