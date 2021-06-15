<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>jstl02.jsp<br>
	<form action="jstl_result.jsp">
		사과<input type="chekbox" name="ch" value="1"><br>
		배<input type="chekbox" name="ch" value="1"><br>
		수박<input type="chekbox" name="ch" value="1"><br>
		<input type="submit" value="전송">
	</form>
	<c:set var="n" value="100"/>
	<c:choose>
		<c:when test="${n==100}">
			n은 100과 같다
		</c:when>
		<c:when test="${n < 100}">
			n은 100보다 작다
		</c:when>
		<c:otherwise>
			엘스 구문
		</c:otherwise>
	</c:choose>	
<%-- 	
	<% session.setAttribute(arg0, arg1) %>
	<c:set var="name" value="세션값" scope="session" />
	<c:remove var="name" />
--%>
<%--
	<c:redirect url="login.jsp"/>
	<c:import uri="ex01.jsp" />	
 --%>
</body>
</html>