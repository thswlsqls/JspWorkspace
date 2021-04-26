<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 확인 getSession</h1>
	<%
		String id = (String)session.getAttribute("id");
		String nickName = (String)session.getAttribute("nickName");
	%>
	id : <%=id %><br>
	nName : <%=nickName %><hr>
	<a href="setSession.jsp">setSession이동</a>
	<a href="delSession.jsp">delSession이동</a>
	
</body>
</html>