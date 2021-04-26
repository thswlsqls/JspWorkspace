<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>quiz_chkRegister.jsp<br>
<h1>회원가입 확인 페이지입니다</h1>
	<%
		response.setCharacterEncoding("utf-8");	
		request.setCharacterEncoding("utf-8");		
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system", pwd="1234";
		DriverManager.getConnection(url, id, pwd);
		Connection con = DriverManager.getConnection(url, id, pwd); 

		String userId = request.getParameter("id");
		String userPwd = request.getParameter("pwd");
		String userPwdConfirm = request.getParameter("pwdConfirm");
		String userName = request.getParameter("name");
		String userAddr = request.getParameter("addr");
		String userTel = request.getParameter("tel");
		
		String sql = "select * from members where id=?";
		String sqlUpdate = "insert into members(id, pwd, name, addr, tel) values(?, ?, ?, ?, ?)";
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, userId);
		ResultSet rs = ps.executeQuery();
		
		PreparedStatement psUpdate = con.prepareStatement(sqlUpdate);
		psUpdate.setString(1, userId); 
		psUpdate.setString(2, userPwd); 
		psUpdate.setString(3, userName);
		psUpdate.setString(4, userAddr); 
		psUpdate.setString(5, userTel);
		
		if(rs.next()){
			out.print("이미 가입된 아이디입니다");
			response.sendRedirect("quiz_register.jsp");
		} else{
			out.print("사용 가능한 아이디입니다");
			if(userPwd.equals(userPwdConfirm)){
				ResultSet rsUpdate = psUpdate.executeQuery();
				response.sendRedirect("quiz_main.jsp");
			}else{
				out.print("비밀번호가 일치하지 않습니다");
				response.sendRedirect("quiz_register.jsp");
			}
		}
	%>
</body>
</html>