<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>

<p>react</p>

<nav>

    <div>
        <a href="${ pageContext.request.contextPath }/">Marry Hana</a>
        
        <div>
            <ul>

                <li><a href="/hanaLogin" >하나금융 로그인</a></li>
                <li><a href="/member/otherLogin" >다른계정 로그인</a></li>
                
                <li><a href="/member/logout" >로그아웃</a></li>
                
                <li><a href="join">회원가입</a></li>
                <li><a href="/board/list">게시판</a></li>
                <li><a href="/board/write">게시판 글쓰기</a></li>                
                      
                <li><a href="/write">계좌개설</a></li>
                <li><a href="/list">계좌조회</a></li>
                
                <li><a href="/accountTransactionList">거래내역</a></li>
                
                <li><a href="http:/localhost:3000/HanaMain">hanaMain</a></li>
                
                <li><a href="/sample">sample</a></li>
                
                <li><a href="/kakaoPayConnect">카카오페이</a></li>
                
                                
                

            </ul>      
        </div>
        
    </div>
    
</nav>

	
</body>

</html>