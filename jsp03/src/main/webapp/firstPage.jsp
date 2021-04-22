<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>firstPage.jsp<br>
	<%
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session"); //브라우저가 살아있는 동안 유지
		application.setAttribute("name", "application"); //서버가 살아있는 동안 유지
	%>
	<h1>firstPage.jsp</h1>
	page : <%= pageContext.getAttribute("name") %><br>
	request : <%= request.getAttribute("name") %><br>
	session : <%= session.getAttribute("name") %><br>
	application : <%= application.getAttribute("name") %><br>
	
	<%
		request.getRequestDispatcher("secondPage.jsp").forward(request, response);
	%>
	
	<a href="secondPage.jsp">secondPage이동</a>
</body>
</html>