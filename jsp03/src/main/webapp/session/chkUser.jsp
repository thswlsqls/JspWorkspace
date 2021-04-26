<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
	<%
		String id="1", pwd="1", nickName="홍길동";
		String inputId = request.getParameter("id");
		String inputPwd = request.getParameter("pwd");
		
		if(id.equals(inputId)&&pwd.equals(inputPwd)){
			session.setAttribute("login", nickName);
			response.sendRedirect("main.jsp");
		}else{ %>
			<script>alert('로그인 실패')</script>
		<%
				response.sendRedirect("login.jsp");
			}
		%>

</body>
</html>