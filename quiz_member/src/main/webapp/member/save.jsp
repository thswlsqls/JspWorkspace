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
	String userId = request.getParameter("id");
	String userPwd = request.getParameter("pwd");
	String userName = request.getParameter("name");
	String userAddr = request.getParameter("addr");
	String userTel = request.getParameter("tel");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id="java1", pwd="1234";
	Connection con = DriverManager.getConnection(url,id,pwd);
	String sql = 
		"insert into members(id,pwd,name,addr,tel) values(?,?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, userId);
	ps.setString(2, userPwd);
	ps.setString(3, userName);
	ps.setString(4, userAddr);
	ps.setString(5, userTel);
	ps.executeUpdate();
	response.sendRedirect("login.jsp");
	%>
</body>
</html>






