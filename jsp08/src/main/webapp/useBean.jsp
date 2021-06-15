<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>useBean.jsp<br>
	<jsp:useBean id="dto" class="members.MemberDTO" />
	<%-- MemberDTO dto = new MemberDTO(); --%>
	<%
		dto.setId("abcd"); dto.setPwd("1234");
	%>
	<%= dto.getId() %><br>
	<%= dto.getPwd() %>
</body>
</html>





