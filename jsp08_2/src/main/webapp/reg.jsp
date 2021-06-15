<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="testBoard.TestDAO"/>
	<jsp:useBean id="dto" class="testBoard.TestDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	${dao.insert(dto)}
	<c:redirect url="list.jsp"/>
	
</body>
</html>



