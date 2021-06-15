<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	%>
<jsp:include page="../default/header.jsp" />
	<div class="wrap">
		<font size="7">로그인 성공</font>
	</div>
<jsp:include page="../default/footer.jsp" />
</body>
</html>