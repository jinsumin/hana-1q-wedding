<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

   
   
   
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- Bootstrap Css -->
        <link href="chat/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="chat/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="chat/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
        <!-- Dark Mode Css-->
        <link href="chat/assets/css/dark-layout.min.css" id="app-style" rel="stylesheet" type="text/css" />




</head>

<body>


   
   <div id='chatt' style="
    display: flex;
    flex-direction: column;
    align-items: center;
">



<div class="row">

<img class="mt-3 mb-n4" src="chat/assets/images/users/1Qchat.png" style="width: 250px;height: 150px">

</div>

      
      <c:choose>

         <c:when test="${member.type eq '하객'}">
         
               <input type='text' id='mid' value='${guest.name}' style="display: none; ">
                     
         </c:when>
         
         <c:when test="${member.type eq '신랑'}">
               
               <input type='text' id='mid' value='${groom.name}'style="display: none; ">               
         
         </c:when>
         
         <c:when test="${member.type eq '신부'}">
               
               <input type='text' id='mid' value='${bride.name}' style="display: none; ">               
         
         </c:when>
         
         <c:otherwise>
            
               <input type='text' id='mid' value='${manager.name}' style="display: none; ">
         
         </c:otherwise>
      
      </c:choose>
      
      <input type='button' value='채팅시작하기' id='btnLogin' style="display: none; ">
      <br/>
      
	                      <div class="user-chat mt-4 mt-sm-0 ms-lg-1" style="
    width: 700px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.5);border-width: 3px; border-radius: 10px;">
                                <div class="card">
                                    <div class="p-3 px-lg-4 border-bottom"> 
                                        <div class="row">
                                            <div class="col-md-4 col-6">

                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3 ms-0">
                                                        <img src="chat/assets/images/users/character1.png" class="rounded-circle avatar-xs" alt="avatar">
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <h5 class="font-size-16 mb-0 text-truncate"><a href="#" class="text-reset user-profile-show">${member.name}</a>  <i class="mdi mdi-circle text-success align-middle font-size-10 ms-1"></i></h5>
                                                    </div>
                                                </div>
                                            </div><!-- End col -->

                                            <div class="col-md-8 col-6">
                                                <ul  class="list-inline user-chat-nav text-end mb-0">
                                                    <li class="list-inline-item">
                                                        <div class="dropdown">
                                                            <button class="btn nav-btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="mdi mdi-magnify"></i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end dropdown-menu-md p-0">
                                                                <form class="p-2">
                                                                    <div>
                                                                        <input type="text" class="form-control border-light rounded" placeholder="Search...">
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    
                                                    <li class="list-inline-item">
                                                        <div class="dropdown">
                                                            <button class="btn nav-btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="mdi mdi-dots-horizontal"></i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end">s
                                                                <a class="dropdown-item" href="#">Profile</a>
                                                                <a class="dropdown-item" href="#">Archive</a>
                                                                <a class="dropdown-item" href="#">Muted</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </li>

                                                </ul>
                                            </div><!-- End col -->
                                        </div><!-- End row -->
                                    </div>

                                    <div class="py-lg-3 px-lg-2">
                                        <div class="chat-conversation p-3" data-simplebar style="max-height: 455px;">
                                            <ul id="talk" class="list-unstyled mb-0" style="height: 500px; width: 650px"> 
                                            
                                            
                                            
                                            
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="p-3 chat-input-section">
                                        <div class="row">
                                            <div class="col">
                                                <div class="position-relative">
                                                    <input id='msg' type="text" class="form-control chat-input rounded" placeholder="메시지를 입력하세요">
                                                </div>
                                            </div><!-- End col -->

<!--                                             <div class="col-auto">
                                                <button id='btnSend' type="button" class="btn btn-primary chat-send w-md waves-effect waves-light font-weight-bold" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);font-family: hanaM; font-weight: 500">메시지 보내기<i class="mdi mdi-send float-end"></i></button> -->
                                                
                                                <button id='btnSend' class="btn btn-primary" type="button"
					onclick="location.href='/'" style="background-color: #008485; border-color: #008485; width: 150px; height: 40px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);font-family: hanaM">
					<span class="mr-1"></span>
					메시지 전송<i class="mdi mdi-send float-end"></i>
				</button>
                                                
                                                
                                                
                                            </div><!-- End col -->

                                        </div><!-- End row -->
                                    </div>
                                </div>
                            </div>
      
      
      
<!--       <div id='sendZone'>
         
         <textarea id='msg' value='hi...' ></textarea>
         
         <input type='button' value='전송' id='btnSend'>
      </div>
       -->
      
   </div>
   
   <script src='js/chatt.js'></script>
   
           <!-- JAVASCRIPT -->
        <script src="chat/assets/libs/jquery/jquery.min.js"></script>
        <script src="chat/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="chat/assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="chat/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="chat/assets/libs/node-waves/waves.min.js"></script>

        <!-- App js -->
        <script src="chat/assets/js/app.js"></script>
        
        
<script>

$(document).ready(function(){

	$('#btnLogin').trigger('click')

})
</script>        
        
   
   
   
   
</body>

</html>