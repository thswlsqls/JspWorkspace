<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>jstl_result.jsp<br>
	${param.name }<br>
	${param.ch }<hr>
	<c:forEach var="n" items="${paramValues.ch }">
		${n }<br>
	</c:forEach>
</body>
</html>