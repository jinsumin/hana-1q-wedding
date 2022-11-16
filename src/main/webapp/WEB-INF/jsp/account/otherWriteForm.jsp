<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<section>
            <div>
                
                <div>
                    <div>
                        <h2>계좌개설</h2>
                        <hr class="divider" />
                    </div>
                </div>
                
                <div>
                    <div>

					<form:form action="/account/otherWrite" method="post" modelAttribute="accountVO1">
							
							<table>
												
								<tr>
									<th>핸드폰 번호</th>
									<td>
										<form:input path="phoneNumber" />
										<form:errors path="phoneNumber"/>
									</td>		
								</tr>
								
								<tr>
									<th>계좌비밀번호</th>
									<td>
										<form:input path="accountPassword" />
										<form:errors path="accountPassword"/>
									</td>		
								</tr>

								<tr>
									<th>계좌잔액</th>
									<td>
										<form:input path="balance" />
										<form:errors path="balance"/>
									</td>		
								</tr>

								<tr>
									<th>계좌명칭</th>
									<td>
										<form:input path="bankAlias" />
										<form:errors path="bankAlias"/>
									</td>		
								</tr>
								
								<tr>
									<th>은행코드</th>
									<td>
										<form:input path="bankCode" />
										<form:errors path="bankCode"/>
									</td>		
								</tr>

								<tr>
									<th>이체한도</th>
									<td>
										<form:input path="transferLimit" />
										<form:errors path="transferLimit"/>
									</td>		
								</tr>
								
							</table>
							<input type="submit" value="입력">
						</form:form>
                    
                    </div>
                </div>
                
            </div>
            
    </section>


</body>

</html>