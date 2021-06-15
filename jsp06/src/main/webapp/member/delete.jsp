
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	delete.jsp<br>
<%@page import="members.MemberDAO"%>
<%
	MemberDAO dao = new MemberDAO();
	String userId = request.getParameter("id");
	int result = dao.delete( userId );
	if(result == 1){ %>
		<script type="text/javascript">
			alert('삭제 되었습니다')
			location.href="memberInfo.jsp"
		</script>
	<%}else{ %>
		<script type="text/javascript">
			alert('문제가 생겼습니다')
			location.href="info.jsp?id=<%= userId %>"
		</script>
	<%} %>

</body>
</html>


