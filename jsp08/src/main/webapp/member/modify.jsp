<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<%--
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	--%>

	<jsp:useBean id="dto" class="members.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<c:set var="result" value="${dao.modify(dto) }"/>
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert('수정되었습니다')
				location.href='info.jsp?id=${dto.getId()}'
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert('문제가 생겼습니다')
				location.href='modifyView.jsp?id=${dto.getId()}'
			</script>
		</c:otherwise>
	</c:choose>
	<%--
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
	 --%>
</body>
</html>





