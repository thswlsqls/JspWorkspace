<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>login.jsp<br>

	<%@ include file="index.jsp" %>
	
	<% if(session.getAttribute("login") != null){ %>
		<%=session.getAttribute("login") %>님 로그인 상태입니다<br>
		<a href="main.jsp">main 이동</a>
	<%}else{ %>
		<form method="post" action="chkUser.jsp">
			<input type="text" name="id"><br>
			<input type="password" name="pwd"><br>
			<input type="submit" value="submit"><br>
		</form>
	<%}%>
</body>
</html>








