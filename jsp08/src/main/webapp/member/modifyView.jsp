
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../default/header.jsp" />
<%@page import="members.MemberDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	
	<%-- MemberDTO dto = dao.info(request.getParameter("id")); --%>
	<c:set var="dto" value="${ dao.info(param.id) }"/>
	
	<div class="wrap" style="width:300px;">
		<form action="modify.jsp" method="post">
			<input type="hidden" name="id" value="${dto.id}<%--=dto.getId()--%>" >
			이름  <input type="text" name="name" value="${dto.name}<%--=dto.getName() --%>"><br>
			주소  <input type="text" name="addr" value="${dto.addr}<%--=dto.getAddr() --%>"><br>
			전번  <input type="text" name="tel" value="${dto.tel}<%--=dto.getTel() --%>"><br>
			<input type="submit" value="수정" >
		</form>
	</div>
	<jsp:include page="../default/footer.jsp" />
</body>
</html>








