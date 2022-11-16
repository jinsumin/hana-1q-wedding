<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Hero -->
<section class="border-bottom-0  section-header  text-white"
	style="background-color: #008485; padding-bottom: 40px;">

	<div class="container">
		<div class="row justify-content-between align-items-center">


			<div class="col-6 text-center text-md-left">

				<h1 class="display-2 mb-4" style="font-family: hanaM;text-shadow: 4px 2px 2px #aaa">
					1Q Wedding<br class="d-none d-md-inline"> 축의금 송금 서비스
				</h1>


				
				<button onclick="updateAgreeOpenBanking();" class="btn btn-tertiary mr-3 animate-up-2"
				data-toggle="modal" data-target="#modal-3"
				style="background-color: #014A5A; border-color: #014A5A; width: 200pt; height: 60pt; font-family: hanaM;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">
				<h3 style="font-family: hanaM;text-shadow: 2px 2px 2px #aaa">오픈뱅킹 계좌조회</h3>
			</button>

			</div>



			<!-- Modal Content -->
			<div class="modal fade" id="modal-3" tabindex="-1" role="dialog"
				aria-labelledby="modal-notification" aria-hidden="true">
				
				<div class="modal-dialog modal-info modal-dialog-centered"
					role="document">
					
					<div class="modal-content bg-gradient-secondary">

						<div class="modal-body">
							
							<div class="py-3 text-center">
								<span class="modal-icon display-1-lg">
								
								<div class="d-flex justify-content-center">
									
									<lottie-player src="https://assets5.lottiefiles.com/packages/lf20_Z77us6.json"  background="transparent"  speed="0.7"  style="width: 150px; height: 150px;"  loop  autoplay></lottie-player>
									
								</div>
								
								
								</span>
								<h2 class="h4 modal-title my-3" style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 23px;">오픈뱅킹 서비스를 이용하시려면 </h2>
								
								<h2 class="h4 modal-title my-3" style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 23px;"> 오픈뱅킹 서비스 이용약관에 동의하셔야 합니다</h2>
								
								<h2 class="h4 modal-title my-3" style="font-family: hanaM; text-shadow: 1px 1px 1px #aaa; font-size: 23px;">동의하시겠습니까?</h2>
								
								
							</div>
							
																									<div class="accordion">

																	<div class="card card-sm card-body border-light mb-0">

																		<a href="#panel-4" data-target="#panel-4"
																			class="accordion-panel-header" data-toggle="collapse"
																			role="button" aria-expanded="false"
																			aria-controls="panel-1"> <span
																			class="icon-title h6 mb-0 font-weight-bold" style="font-family: hanaM; color: #014A5A;text-shadow: 1px 1px 1px #aaa"><span
																				class="fa-solid fa-hand-point-right"></span>오픈 뱅킹 동의 약관
																			</span> <span class="icon"><span
																				class="fas fa-plus"></span></span>
																		</a>

																		<div class="collapse" id="panel-4">
																			<div class="pt-3">

																				<p class="mb-0" style="font-family: hanaM; color: #014A5A;text-shadow: 1px 1px 1px #aaa">1Q
																					본 약관은 (주) 하나은행(이하 “은행”이라 한다)이 “사용자”에게 제공하는 오픈뱅킹서비스(이하
“서비스”라 한다)의 이용과 관련하여 “은행”과 “사용자”간의 권리 및 의무, 책임사항, 서비스
이용조건, 절차 등 기본적인 사항을 정함을 목적으로 합니다.</p>

																				<p class="mb-0" style="font-family: hanaM; color: #014A5A;text-shadow: 1px 1px 1px #aaa">

																					제 7 조에 따라 “은행”은 “가입신청자”의 이용신청을 승낙함과 동시에 “가입신청자”는 “은행”이
제공하는 “서비스”의 “사용자”가 되며, 이때부터 “은행”은 “사용자”에게 본 약관이 정하는
“서비스”를 제공합니다.</p>

																				

																			</div>


																		</div>

																	</div>
															
															</div>
							
	
						</div>

						<div class="modal-footer">
							<button type="button"
								class="btn btn-sm btn-white" data-dismiss="modal" id="other_group" onclick="agreeOpenBanking(this.id)">동의</button>
							
							<button type="button"
								class="btn btn-sm btn-white" data-dismiss="modal">거부</button>	
								
						</div>
						

						
					</div>

				</div>
				
			</div>
			<!-- End of Modal Content -->




			<div class="col-3 d-none d-md-block text-center p-0">
				<img src="img_2/illustrations/groomstar.png">
			</div>
			<div class="col-3  d-none d-md-block text-center p-0">
				<img src="img_2/illustrations/bridestar.png">
			</div>



		</div>
	</div>

	<figure
		class="border-bottom-0  position-absolute bottom-0 left-0 w-100 d-none d-md-block mb-n2">

	</figure>

</section>






