<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<header class="header-global">

	<nav id="navbar-main" aria-label="Primary navigation"
		class="navbar navbar-main navbar-expand-lg navbar-theme-primary headroom navbar-dark"
		style="background: #008485;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.2);">
		<div class="container position-relative" style="max-width: 1000px">
			<a class="navbar-brand mr-lg-5" href="/"> <img
				class="navbar-brand-dark" src="img_2/bk19weddingwhite.png"
				 style="width: 150px; height: 90px;"> 
			</a>

			<div class="navbar-collapse collapse" id="navbar_global">


			</div>


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