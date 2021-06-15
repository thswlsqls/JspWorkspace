<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<%--
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	--%>
	
	<fmt:requestEncoding value="utf-8"/>
	
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<jsp:useBean id="dto" class="members.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	
	${dao.save(dto) }
	<c:redirect url="login.jsp"/>
	
	<%--
		dao.save(dto);
		response.sendRedirect("login.jsp");
	--%>
</body>
</html>


