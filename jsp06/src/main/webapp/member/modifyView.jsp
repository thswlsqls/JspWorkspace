
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="members.MemberDTO"%>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<%
		MemberDTO dto = dao.info(request.getParameter("id"));
	%>
	<form action="modify.jsp" method="post">
		<input type="hidden" name="id" value="<%=dto.getId()%>" >
		이름 : <input type="text" name="name" value="<%=dto.getName() %>"><br>
		주소 : <input type="text" name="addr" value="<%=dto.getAddr() %>"><br>
		전번 : <input type="text" name="tel" value="<%=dto.getTel() %>"><br>
		<input type="submit" value="수정">
	</form>
</body>
</html>








