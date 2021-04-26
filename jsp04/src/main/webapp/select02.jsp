<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>select02.jsp<br>
<%@page import="java.sql.*"%>
		id : <%= request.getParameter("id") %>	
		<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system", pwd="1234";
		DriverManager.getConnection(url, id, pwd);
		Connection con = DriverManager.getConnection(url, id, pwd); 
		
		String userId = request.getParameter("id");
		
		String sql = "select * from newst where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, userId);
		
		ResultSet rs = ps.executeQuery();
		if(rs.next()){%>
			<table border="1" width="200px">
				<tr>
					<th colspan="2">인 적 사 항</th>
				</tr>
				<tr>
					<th>아이디</th><td><%=rs.getString("id") %></td>
				</tr>
				<tr>
					<th>이름</th><td><%=rs.getString("name") %></td>
				</tr>
				<tr>
					<th>나이</th><td><%=rs.getString("age") %></td>
				</tr>
			</table>
		<% } %>
</body>
</html>