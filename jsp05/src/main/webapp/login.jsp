<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>login.jsp<br>
	<form action="chkUser.jsp">
		<input type="text" name="id" placehoder="input id"><br>
		<input type="text" name="pwd" placeholder="input passward" checked>
		사용자<input type="radio" name='user' value="user" >
		관리자<input type="radio" name='user' value="admin" ><br>
		<input type="submit" value="submit">
	</form>
</body>
</html>