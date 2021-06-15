<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>jstl01.jsp<br>
	<%
		ArrayList<Integer> list = new ArrayList<>();
		list.add(111);list.add(222);list.add(333);
	%>
	<c:forEach var="n" items="<%=list %>">
		값 : ${n }<br>
	</c:forEach>
<hr>
	<c:set var="num2" value="333111"/>
	<c:if test="${num2 == 333111 }">
			<script type="text/javascript">
				alert('같다 : '+${num2})
			</script>
	</c:if>
<hr>
	<c:set var="num1">
		안녕하세요 만나서 반갑습니다
	</c:set>
	${num1 }

<hr>

<% String s = "test121212"; %>
	<c:set var="num" value="<%=s %>" />
	${num }<br>
	<c:out value="안녕하세요" />
</body>
</html>











