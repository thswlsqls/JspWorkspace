<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
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
	%>
	<h1>설문 조사 결과</h1>
	<% String[] hobbies = request.getParameterValues("hobby"); %>
	
	이름 <%=request.getParameter("name") %><br>
	소개 <%=request.getParameter("intro") %><br>
	나이 <%=request.getParameter("age") %><br>
		<%
			ArrayList<String> hobbyList = new ArrayList(Arrays.asList(hobbies));
			for(String hobby : hobbies){
				out.print("취미"+hobbyList.indexOf(hobby)+" : "+hobby+"<br>");
			}
		%>
		<hr>
		<%
			for(int i = 0; i< hobbies.length; i++){
				out.print("취미" + i + " : " +hobbies[i]+"<br>");
			}
		%>
		<hr>
		<%
			for(String s : hobbies){
				out.print("취미 : "+ s +"<br>");
			} 
		%> 
		<hr>
		<% for(int i=0; i<hobbies.length; i++){ %>
			취미 : <%=hobbies[i] %><br>				
		<% } %>
		
		
</body>
</html>