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
	
	<form action="/ticket/issue" method="get" name="MemverVO">
	
		<div>
			식권 QR 화면
		</div>
				
		<div>
			<button class="btn btn-primary btn-xl " id="submitButton"  type="submit" >모바일QR식권 발급하기
            </button>
		</div>
		
	</form>
	
	

</body>

</html>