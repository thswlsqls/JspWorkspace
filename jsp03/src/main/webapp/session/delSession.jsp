<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션이 만료되었습니다.(delSession)</h1>
	<%
		session.removeAttribute("nickName");
		session.removeAttribute("id");
		session.setMaxInactiveInterval(5);
	%>
	<hr>
	<a href="setSession.jsp">setSession이동</a>
	<a href="getSession.jsp">getSession이동</a>

</body>
</html>