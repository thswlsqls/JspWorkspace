<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<br>
	<h3>로그인 인증된 사람만 들어올 수 있는 페이지 입니다</h3>
	<% if(session.getAttribute("login") == null){ %>
		<script type="text/javascript">alert('로그인 먼저 하세요')</script>
	<%
			response.sendRedirect("login.jsp");
		}
	%>
	
	<%= session.getAttribute("login") %>님 환영합니다<br>
	<hr>
	<a href="login.jsp">로그인 페이지</a>
	<button type="button" onClick="location.href='logout.jsp'">로그아웃</button>
	
</body>
</html>