<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>testBean.jsp<br>
	<%--
		MemberDTO dto = new MemberDTO();
		dto.setId(request.getParameter("id"));
		dto.setPwd(request.getParameter("pwd"));
		dto.setName(request.getParameter("name"));
		dto.setAddr(request.getParameter("addr"));
		dto.setTel(request.getParameter("tel"));
	--%>
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="dto" class="members.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<%= dto.getId() %><br>
	<%= dto.getPwd() %><br>
	<%= dto.getName() %><br>
	<%= dto.getAddr() %><br>
	<%= dto.getTel() %><br>
	<hr>
	<jsp:getProperty property="id" name="dto"/><br>
	<jsp:getProperty property="pwd" name="dto"/><br>
	<jsp:getProperty property="name" name="dto"/><br>
	<jsp:getProperty property="addr" name="dto"/><br>
	<jsp:getProperty property="tel" name="dto"/><br>
</body>
</html>




