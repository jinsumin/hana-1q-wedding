<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<header class="header-global">

	<nav id="navbar-main" aria-label="Primary navigation"
		class="navbar navbar-main navbar-expand-lg navbar-theme-primary headroom navbar-dark"
		style="background: #008485;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);height: 140px">
		<div class="container position-relative" style="max-width: 1700px">
			<a class="navbar-brand mr-lg-5" href="/"> <img
				class="navbar-brand-dark mt-3" src="img_2/bk19weddingwhite.png"
				 style="width: 180px; height: 120px;"> 
			</a>

			<div class="navbar-collapse collapse" id="navbar_global">

				<div class="navbar-collapse-header">
					<div class="row">
						<div class="col-6 collapse-brand">
							<a href="../../index.html"> <img src="img_2/brand/dark.svg"
								alt="Themesberg logo">
							</a>
						</div>
						<div class="col-6 collapse-close">
							<a href="#navbar_global" class="fas fa-times"
								data-toggle="collapse" data-target="#navbar_global"
								aria-controls="navbar_global" aria-expanded="false"
								title="close" aria-label="Toggle navigation"></a>
						</div>
					</div>
				</div>





				<!-- 좌측 nav 시작-->

				<c:choose>

					<c:when test="${member.type eq '관리자'}">

						<ul class="navbar-nav navbar-nav-hover align-items-lg-center">

							<li class="nav-item dropdown"><a href="/hanaMyPage"
								class="nav-link" role="button"> <span
									class="nav-link-inner-text"
									style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">모든 거래내역 조회</span>
							</a></li>


							<li class="nav-item dropdown"><a href="/hanaMyPage"
								class="nav-link" role="button"> <span
									class="nav-link-inner-text"
									style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">모든 회원목록 조회 </span>
							</a></li>


							<li class="nav-item dropdown"><a href="/hanaMyPage"
								class="nav-link" role="button"> <span
									class="nav-link-inner-text"
									style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">모든 계좌내역 조회</span>
							</a></li>

							<li class="nav-item dropdown"><a href="/hanaMyPage"
								class="nav-link" role="button"> <span
									class="nav-link-inner-text"
									style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">모든 축하메시지 조회</span>
							</a></li>



						</ul>


					</c:when>


					<c:otherwise>

						<ul class="navbar-nav navbar-nav-hover align-items-lg-center">


							<li class="nav-item dropdown"><a href="#" class="nav-link"
								data-toggle="dropdown" role="button"> <span
									class="fas fa-angle-down nav-link-arrow"></span> <span
									class="nav-link-inner-text"
									style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">나의 결혼식 관리</span>
							</a> <c:choose>

									<c:when test="${member.type eq '하객'}">

										<div class="dropdown-menu dropdown-menu-lg">
											<div class="col-auto px-0" data-dropdown-content>
												<div class="list-group list-group-flush">

													<a href="/marryAgreeForm"
														class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
														<span class="icon icon-sm icon-dark"><span
															class="fas fa-file-alt"></span></span>
														<div class="ml-4">
															<span class="text-dark d-block"
																style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">신랑신부등록</span>
														</div>
													</a>


												</div>

											</div>

										</div>

									</c:when>


									<c:otherwise>

										<div class="dropdown-menu dropdown-menu-lg">
											<div class="col-auto px-0" data-dropdown-content>
												<div class="list-group list-group-flush">

													<a href="/marryAgreeForm"
														class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
														<span class="icon icon-sm icon-dark"><span
															class="fas fa-file-alt"></span></span>
														<div class="ml-4">
															<span class="text-dark d-block"
																style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">신랑신부등록</span>
														</div>
													</a> <a href="/accountTransactionList" target="_blank"
														class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
														<span class="icon icon-sm icon-dark"><span
															class="fas fa-microphone-alt"></span></span>
														<div class="ml-4">
															<span class="text-dark d-block"
																style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">내 결혼식
																축의금 관리</span>
														</div>
													</a>
												</div>

											</div>

										</div>

									</c:otherwise>

								</c:choose></li>


							<li class="nav-item dropdown"><a href="#" class="nav-link"
								data-toggle="dropdown" role="button"> <span
									class="fas fa-angle-down nav-link-arrow"></span> <span
									class="nav-link-inner-text"
									style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">나의 하객 방문 관리</span>
							</a>

								<div class="dropdown-menu dropdown-menu-lg">
									<div class="col-auto px-0" data-dropdown-content>
										<div class="list-group list-group-flush">

											<a href="../../docs/introduction.html"
												class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
												<span class="icon icon-sm icon-dark"><span
													class="fas fa-file-alt"></span></span>
												<div class="ml-4">
													<span class="text-dark d-block"
														style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">내가 보낸 축의금
														관리</span>
												</div>
											</a>


										</div>

									</div>

								</div></li>


							<li class="nav-item dropdown"><a href="#" class="nav-link"
								data-toggle="dropdown" role="button"> <span
									class="fas fa-angle-down nav-link-arrow"></span> <span
									class="nav-link-inner-text"
									style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">계좌관리</span>
							</a>

								<div class="dropdown-menu dropdown-menu-lg">
									<div class="col-auto px-0" data-dropdown-content>
										<div class="list-group list-group-flush">

											<a href="/write" target="_blank"
												class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
												<span class="icon icon-sm icon-dark"><span
													class="fas fa-microphone-alt"></span></span>
												<div class="ml-4">
													<span class="text-dark d-block"
														style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">계좌개설</span>
												</div>
											</a> <a href="/selectHanaAccount"
												class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
												<span class="icon icon-sm icon-dark"><span
													class="fas fa-file-alt"></span></span>
												<div class="ml-4">
													<span class="text-dark d-block"
														style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">하나은행 계좌조회</span>
												</div>
											</a> <a href="/selectOpenAccount"
												class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
												<span class="icon icon-sm icon-dark"><span
													class="fas fa-file-alt"></span></span>
												<div class="ml-4">
													<span class="text-dark d-block"
														style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">오픈뱅킹 계좌조회</span>
												</div>
											</a>



										</div>

									</div>

								</div></li>

							<li class="nav-item dropdown"><a href="/hanaMyPage"
								class="nav-link" role="button"> <span
									class="nav-link-inner-text"
									style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa">마이페이지 </span>
							</a></li>


						</ul>

					</c:otherwise>

				</c:choose>

			</div>

			<!-- 좌측 nav 끝 -->



			<!-- 우측 nav 시작 -->

			<c:choose>

				<c:when test="${member.type eq '관리자' }">


					<div class="d-flex align-items-center">

						<div class="dropdown pl-1">


							<div class="d-flex align-items-center" id="dropdownMenuButton"
								data-toggle="dropdown">

								<button id="usertype"
									style="background-color: #014A5A; border-color: #014A5A;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);text-shadow: 1px 1px 1px #aaa"
									type="button" class="btn btn-primary">
									<span class="fa fa-user"></span> ${member.type} 입니다
								</button>

								&nbsp; &nbsp;&nbsp; &nbsp;

							</div>

						</div>

					</div>


				</c:when>


				<c:when
					test="${member.type eq '신랑' || member.type eq '신부' || member.type eq '하객' }">

					<div class="d-flex align-items-center">

						<div class="dropdown pl-1">


							<div class="d-flex align-items-center" id="dropdownMenuButton"
								data-toggle="dropdown">

								<button id="userpoint"
									style="background-color: #014A5A; border-color: #014A5A;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);text-shadow: 1px 1px 1px #aaa"
									type="button" class="btn btn-primary">
									<span class="fa fa-user"></span> 오픈뱅킹 : ${member.openbanking} <span
										id="chatAlarm" class="badge badge-pill badge-tertiary"></span>
								</button>

								&nbsp; &nbsp;&nbsp; &nbsp;


								<button id="usertype"
									style="background-color: #014A5A; border-color: #014A5A;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);text-shadow: 1px 1px 1px #aaa"
									type="button" class="btn btn-primary">
									<span class="fa fa-user"></span> 고객유형 : ${member.type}
								</button>

								&nbsp; &nbsp;&nbsp; &nbsp;


								<button id="username"
									style="background-color: #014A5A; border-color: #014A5A;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);text-shadow: 1px 1px 1px #aaa"
									type="button" class="btn btn-primary">
									<span class="fa fa-user"></span> 고객이름 : ${member.name} <span
										id="chatAlarm" class="badge badge-pill badge-tertiary"></span>
								</button>


								&nbsp; &nbsp;&nbsp; &nbsp;

								<button style="background-color: #014A5A; border-color: #014A5A;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);text-shadow: 1px 1px 1px #aaa"
									type="button" class="btn btn-primary">
									<span class="fa fa-user"></span> 채팅하기 <span id="chatAlarm"
										class="badge badge-pill badge-tertiary"></span>

								</button>

							</div>

						</div>

					</div>


				</c:when>


				<c:otherwise>

					<div class="d-flex align-items-center">

						<div class="dropdown pl-1">


							<div class="d-flex align-items-center" id="dropdownMenuButton"
								data-toggle="dropdown">

								<button
									style="background-color: #04515C; border-color: #04515C; width: 130px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);text-shadow: 1px 1px 1px #aaa"
									type="button" class="btn btn-primary"
									onclick="location.href='/hanaLogin'">
									<span class="fa fa-user"></span> &nbsp; 로그인 <span
										id="chatAlarm" class="badge badge-pill badge-tertiary"></span>

								</button>

								&nbsp; &nbsp;&nbsp; &nbsp;

								<button
									style="background-color: #04515C; border-color: #04515C; width: 130px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);text-shadow: 1px 1px 1px #aaa"
									type="button" class="btn btn-primary"
									onclick="location.href='/join'">
									<span class="fa fa-user"></span> &nbsp; 회원가입 <span
										id="chatAlarm" class="badge badge-pill badge-tertiary"></span>

								</button>



							</div>

						</div>

					</div>


				</c:otherwise>


			</c:choose>




		</div>
	</nav>

</header>