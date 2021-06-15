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

	<jsp:useBean id="dto" class="members.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<%
		int result = dao.modify(dto);
		if(result == 1){%>
			<script type="text/javascript">
				alert('수정되었습니다')
				location.href='info.jsp?id=<%=dto.getId()%>'
			</script>
		<%}else{ %>
			<script type="text/javascript">
				alert('문제가 생겼습니다')
				location.href='modifyView.jsp?id=<%=dto.getId()%>'
			</script>
		<%} %>
	
</body>
</html>





