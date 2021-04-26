<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
	
	<%
		String user = request.getParameter("user");
		String nickName = "홍길동";
		if(user.equals("user")){ %>
			<jsp:forward page="userPage.jsp">
				<jsp:param value="<%=nickName %>" name="nick"/>
			</jsp:forward>
		<% }else{ %>
			<jsp:forward page="adminPage.jsp">
				<jsp:param value="<%=nickName %>" name="nick"/>
			</jsp:forward>	
		<% } %>
	
	<--jsp:forward page="userPage.jsp"/>
	<script type="text/javascrpit">
		location.href="userPage.jsp"
	</script>
	
</body>
</html>