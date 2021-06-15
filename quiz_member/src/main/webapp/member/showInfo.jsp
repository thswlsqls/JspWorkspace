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
	
	String sql = "select * from members where id = '"+
						session.getAttribute("login")+"'";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){ %>
		<h3>개인정보 페이지</h3>
		<form action="modify.jsp" method="post">
		id : <input type="text" name="id" value="<%=rs.getString("id") %>"><br>
		pwd : <input type="text" name="pwd" value="<%=rs.getString("pwd") %>"><br>
		name : <input type="text" name="name" value="<%=rs.getString("name") %>"><br>
		addr : <input type="text" name="addr" value="<%=rs.getString("addr") %>"><br>
		tel : <input type="text" name="tel" value="<%=rs.getString("tel") %>"><br>
		<input type="submit" value="수정">
		</form>
		<a href="delete.jsp">삭제</a>
	<%}%>
</body>
</html>





