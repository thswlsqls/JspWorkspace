<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<f:requestEncoding value="utf-8"/>
<%--
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	--%>
	<%-- <jsp:include page="../default/header.jsp" /> --%>
	<c:import url="/default/header.jsp"/>
	<div class="wrap" align="right">
		<form action="chkUser.jsp">
			<input type="text" name="id" placeholder="input id"><br>
			<input type="text" name="pwd" placeholder="input password"><br>
			<input type="submit" value="LOGIN">
			&nbsp;&nbsp;<a href="saveView.jsp">회원가입</a>
		</form>
	</div>
	<jsp:include page="../default/footer.jsp" />
</body>
</html>