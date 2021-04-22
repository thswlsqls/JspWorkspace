<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a {
		margin: 30px;
	}
	form{
		margin: 0px 30px;
	}
</style>
</head>
<body>
	<hr>
		<a href="<%= request.getContextPath() %>/sub.jsp">서브페이지</a>
		<a href="/jsp02/error/error.jsp">error</a>
		<a href="/jsp02/main.jsp">메인페이지</a>
		<form action="" method="post">
			<input type="text">
			<input type="submit" value="검색">		
		</form>
	<hr>
</body>
</html>