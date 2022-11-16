<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<c:forEach items="${boardlist}" var="board">
		<br>번호 : ${board.no }
		<!-- 
		<br><a href="/board/detail?boardNo=${board.no}">제목 : ${board.title}</a>
		 -->
		<br><a href="/board/detail/${board.no}">제목 : ${board.title}</a>
		<br>내용 : ${board.content}
		<br>글쓴이 : ${board.writer}
		<br>날짜 : ${borad.regDate}
		<br>댓글수 : ${board.replyCnt}
		<br>조회수 : ${board.viewCnt }
		<br>
	</c:forEach>
	
	<a href="${ pageContext.request.contextPath }/">
	main
	</a>
	
</body>

</html>