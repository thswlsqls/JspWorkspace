<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>post.jsp<br>
	<h3>post.jsp연결되었습니다</h3>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<%-- 	response.setCharacterEncoding("utf-8"); --%>
	id : <%= request.getParameter("id") %><br>
	pwd : <%= request.getParameter("pwd") %><br>
</body>
</html>