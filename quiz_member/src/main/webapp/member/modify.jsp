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
	String sql = "update members set pwd=?,name=?,addr=?,tel=? where id=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, userPwd);
	ps.setString(2, userName);
	ps.setString(3, userAddr);
	ps.setString(4, userTel);
	ps.setString(5, userId);
	ps.executeUpdate();
	%>
	<script type="text/javascript">
		alert('회원 수정되었습니다')
		location.href='main.jsp'
	</script>
</body>
</html>









