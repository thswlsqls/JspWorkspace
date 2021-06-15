<%@page import="java.sql.*"%>
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
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id="java1", pwd="1234";
	Connection con = DriverManager.getConnection(url,id,pwd);
	String sql = "delete from members where id='"+
						session.getAttribute("login")+"'";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.executeUpdate();
	session.invalidate();
	response.sendRedirect("login.jsp");
	%>
</body>
</html>

