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
		session.setAttribute("id", "id");
		session.setAttribute("nickName", "홍길동");
	%>
	<h1>세션이 설정되었습니다</h1>
	
	<a href="getSession.jsp">getSession이동</a>
	<a href="delSession.jsp">delSession이동</a>
	
</body>
</html>