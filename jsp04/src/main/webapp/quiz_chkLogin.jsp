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
		response.setCharacterEncoding("utf-8");	
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system", pwd="1234";
		DriverManager.getConnection(url, id, pwd);
		Connection con = DriverManager.getConnection(url, id, pwd); 

		String userId = request.getParameter("id");
		String userPwd = request.getParameter("pwd");
		
		String sql = "select * from members where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, userId);
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()){
			if(userPwd.equals(rs.getString("pwd"))){
				
				session.setAttribute("userName", userId);
				response.sendRedirect("quiz_main.jsp");
			}else{
				out.print("비밀번호가 일치하지 않습니다.");
				response.sendRedirect("quiz_login.jsp");
			}
		} else{
			out.print("존재하지 않는 아이디입니다");
			response.sendRedirect("quiz_login.jsp");
		}
	%>

</body>
</html>