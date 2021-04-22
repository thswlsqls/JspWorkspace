<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	int readCount = 0;
	function addReadCont(){
		
	}
</script>
</head>
<body>
	<table border="1">
		<tr>
			<td>제목</td>
			<td>조회수</td>
		</tr>
		<tr>
			<td><a href="quizPostContent.jsp">안녕하세요</a></td>
			<td>
				<%String count = (String)application.getAttribute("count"); %>
				<% if(count == null){ %>
						0
				<% }else{ %> 
				<%=count %>
				<%} %>	
			</td>
		</tr>	
	</table>

</body>
</html>