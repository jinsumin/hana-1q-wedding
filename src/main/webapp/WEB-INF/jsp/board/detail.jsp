<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>

<body>

	<table>
		
		<tr>
			<th>글번호</th>
			<td>${board.no}</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${board.writer}</td>		
		</tr>
		<tr>
			<th>제목</th>
			<td>${board.title}</td>		
		</tr>
		<tr>
			<th>등록일</th>
			<td>${board.regDate}</td>		
		</tr>
		<tr>
			<th>내용</th>
			<td>${board.content}</td>		
		</tr>

<!-- 
		<tr>
			<th>댓글수</th>
			<td id="replyCnt">${board.replyCnt}</td>		
		</tr>
 -->

		<tr>
			<th>조회수</th>
			<td>${board.viewCnt}</td>
		</tr>
		
	</table>
	
	<form name="rform">	
		댓글 : <input type="text" size="30" name="content">
		작성자:<input type="text" size="20" name="writer"> 	
		<input type="button" value="댓글작성해봐" id ="AddReplyBtn">
	</form>
	
	<div id="replyList">
	</div>
	
	<br>
	
	<a href="${ pageContext.request.contextPath }/">
	main
	</a>
	
	<script>
	
		$(document).ready(()=>{
			
			getAllReply();
						
			$('#AddReplyBtn').click(()=>{
				let r_content = document.rform.content.value;
				let r_writer = document.rform.writer.value;
				
				$.ajax({
					url : "/reply",
					method : "post",
					data : {
						boardNo : ${board.no},
						content : r_content,
						writer : r_writer
					},
					success : () => {
						getAllReply();
					},
					error : (e) => {
						alert('댓글달기실패');
					},
					complete : () => {
						document.rform.content.value = "";
						document.rform.writer.value = "";
					}
				})
				
			});
			
		$(document).on('click','.delBtn', function(){
				let replyNo = $(this).attr('id');
				
				$.ajax({
					url : "/reply/${board.no}/" + replyNo,
					method : "delete",
					success : () => {
						getAllReply();
					},
					error : () => {
						alert('삭제실패');
					}
				})
			})	
		})
		
		function getAllReply(){
				
			$.ajax({
				url : "/reply/${board.no}",
				method : "get",
				success : (result) => {
					$('#replyList').empty();
					$(result).each(function(){
						let str = '';
						str += '<hr>';
						str += '<div>';
						str += '<strong>' + this.content + '</strong>'+' ';
						str += this.writer +' ';
						str += this.regDate+' ';
						str += '<button class="delBtn" id='+this.no+'>삭제</button>';
						str += '</div>';
							
						$('#replyList').append(str);
						
					});			
				},
				error : () => {
					alert('실패다');
				}
			})
				
		}
	
	</script>
	
	
</body>

</html>