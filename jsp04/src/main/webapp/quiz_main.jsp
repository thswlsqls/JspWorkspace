<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>quiz_main.jsp<br>
<h1>로그인 성공한 메인페이지 입니다</h1><br>
	<%
		response.setCharacterEncoding("utf-8");	
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system", pwd="1234";
		DriverManager.getConnection(url, id, pwd);
		Connection con = DriverManager.getConnection(url, id, pwd); 

		String userId = (String)session.getAttribute("userId");
		
		String sql = "select * from members where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, userId);
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()){
			String userName = rs.getString("name");			
			session.setAttribute("name", (String)userName);
		}
	%>
	<%=session.getAttribute("name") %> 님 반갑습니다.
</body>
</html>