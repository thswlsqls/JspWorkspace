<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkLogin.jsp<br>
	<%
		String id="1", pwd="1";
		String inputId = request.getParameter("id");
		String inputPwd = request.getParameter("pwd");
		if(id.equals(inputId)&&pwd.equals(inputPwd)){
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("loginForm.jsp");
		}
	%>
</body>
</html>