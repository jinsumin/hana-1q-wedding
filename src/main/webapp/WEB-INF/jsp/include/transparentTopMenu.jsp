<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


		
<nav id="navbar-main" aria-label="Primary navigation"
			class="navbar navbar-main navbar-expand-lg navbar-theme-primary headroom navbar-dark" style="
    background: transparent;">
	<div class="container position-relative" style="max-width: 1700px;">
		<a class="navbar-brand mr-lg-5" href="/"> <img
			class="navbar-brand-dark" style="width: 170px; height: 110px" src="img_2/bk19weddingwhite.png"
			alt="Pixel Logo"> <img class="navbar-brand-light"
			src="img_2/brand/hanalogo.png" alt="Pixel Logo Dark" style="width:80px; height:100px;">
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
					
					<ul class="navbar-nav navbar-nav-hover align-items-lg-center">
			
			
				<li class="nav-item dropdown"><a href="#" class="nav-link"
					data-toggle="dropdown" role="button"> <span
						class="fas fa-angle-down nav-link-arrow"></span> <span
						class="nav-link-inner-text" style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa;">나의 결혼식 관리</span>
				</a>

					<div class="dropdown-menu dropdown-menu-lg">
						<div class="col-auto px-0" data-dropdown-content>
							<div class="list-group list-group-flush">
								
								<a href="/marryAgreeForm"
									class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
									<span class="icon icon-sm icon-dark"><span
										class="fas fa-file-alt"></span></span>
									<div class="ml-4">
										<span class="text-dark d-block" style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa;">신랑신부등록</span>
									</div>
								</a>
								
								
								<a href="/accountTransactionList" target="_blank"
									class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
									<span class="icon icon-sm icon-dark"><span
										class="fas fa-microphone-alt"></span></span>
									<div class="ml-4">
										<span class="text-dark d-block" style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa;">내 결혼식 축의금 관리 시스템</span> 
									</div>
								</a>
							</div>

						</div>

					</div></li>


				<li class="nav-item dropdown"><a href="#" class="nav-link"
					data-toggle="dropdown" role="button"> <span
						class="fas fa-angle-down nav-link-arrow"></span> <span
						class="nav-link-inner-text" style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa;">나의 하객 방문 관리</span>
				</a>

					<div class="dropdown-menu dropdown-menu-lg">
						<div class="col-auto px-0" data-dropdown-content>
							<div class="list-group list-group-flush">
								
								<a href="../../docs/introduction.html"
									class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
									<span class="icon icon-sm icon-dark"><span
										class="fas fa-file-alt"></span></span>
									<div class="ml-4">
										<span class="text-dark d-block" style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa;">내가 보낸 축의금 관리 </span> 
									</div>
								</a> 
								
								
							</div>

						</div>

					</div></li>



				<li class="nav-item dropdown"><a href="#" class="nav-link"
					data-toggle="dropdown" role="button"> <span
						class="fas fa-angle-down nav-link-arrow"></span> <span
						class="nav-link-inner-text" style="font-size: 20px; font-weight: 700;text-shadow: 1px 1px 1px #aaa;">계좌관리</span>
				</a>

					<div class="dropdown-menu dropdown-menu-lg">
						<div class="col-auto px-0" data-dropdown-content>
							<div class="list-group list-group-flush">
								
								<a href="/write" target="_blank"
									class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
									<span class="icon icon-sm icon-dark"><span
										class="fas fa-microphone-alt"></span></span>
									<div class="ml-4">
										<span class="text-dark d-block" style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa;">계좌개설</span> 
									</div>
								</a>
								
								
								<a href="/selectHanaAccount"
									class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
									<span class="icon icon-sm icon-dark"><span
										class="fas fa-file-alt"></span></span>
									<div class="ml-4">
										<span class="text-dark d-block" style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa;">하나은행 계좌조회</span> 
									</div>
								</a>
								
																<a href="/selectOpenAccount"
									class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
									<span class="icon icon-sm icon-dark"><span
										class="fas fa-file-alt"></span></span>
									<div class="ml-4">
										<span class="text-dark d-block" style="font-size: 18px; font-weight: 700;text-shadow: 1px 1px 1px #aaa;">오픈뱅킹 계좌조회</span> 
									</div>
								</a>
								
								
								
							</div>

						</div>

					</div></li>
					

			</ul>
					
				</div>
				
				
				
				
				<!-- 우측 nav -->
				
		<c:choose>

<c:when test="${not empty member }">
				
						<div class="d-flex align-items-center">
		
			<div class="dropdown pl-1">
				
				
				<div class="d-flex align-items-center" id="dropdownMenuButton"
					data-toggle="dropdown">


					<button id="usertype" style="background-color: #008485;
	border-color: #008485; width: 180px;text-shadow: 1px 1px 1px #aaa;" type="button" class="btn btn-primary"><span class="fa fa-user"></span>
						고객유형 : ${member.type} <span id="chatAlarm" class="badge badge-pill badge-tertiary"></span>
						</button>
						
					&nbsp; &nbsp;&nbsp; &nbsp;
					
						
					<button id="username" style="background-color: #008485;
	border-color: #008485; width: 180px;text-shadow: 1px 1px 1px #aaa;" type="button" class="btn btn-primary"><span class="fa fa-user"></span>
						고객이름 : ${member.name} <span id="chatAlarm" class="badge badge-pill badge-tertiary"></span>
						</button>
						
					&nbsp; &nbsp;&nbsp; &nbsp;
											
												
						<button style="background-color: #008485;
	border-color: #008485; width: 130px;text-shadow: 1px 1px 1px #aaa;" type="button" class="btn btn-primary" ><span class="fa fa-user"></span>
						&nbsp; 채팅하기 <span id="chatAlarm" class="badge badge-pill badge-tertiary"></span>
						
					</button>
					
					&nbsp; &nbsp;&nbsp; &nbsp;
					
					<button style="background-color: #008485;
	border-color: #008485; width: 130px;text-shadow: 1px 1px 1px #aaa;" type="button" class="btn btn-primary" onclick="location.href='/member/logout'"><span class="fa fa-user"></span>
						&nbsp; 로그아웃 <span id="chatAlarm" class="badge badge-pill badge-tertiary"></span>
						
					</button>
					
					

				</div>
						
			</div>
						
		</div>
				
			
			</c:when>
			
			<c:otherwise>
			
			
			</c:otherwise>
		
		
		</c:choose>
		

				
				
			</div>
		</nav>
