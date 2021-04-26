<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	%>
	<form action="chkLogin.jsp">
		<input type="text" name="id" placeholder="input id"><br>
		<input type="text" name="pwd" placeholder="input password"><br>
		<input type="submit" value="submit">
		<a href="register.jsp">회원가입</a>
		<br>
	</form>
</body>
</html>