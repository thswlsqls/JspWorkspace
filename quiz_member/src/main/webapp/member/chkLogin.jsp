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
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id="java1", pwd="1234";
		Connection con = DriverManager.getConnection(url,id,pwd);
		
		String sql = "select * from members where id = '"+userId+"'";
		//System.out.print(sql);
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){ // 해당 아이디가 존재한다면
			//System.out.println("아이디가 존재하므로 비밀번호를 비교한다");
			if(rs.getString("pwd").equals(userPwd)){
				session.setAttribute("login", rs.getString("id"));
				System.out.println("인증 통과");
				%>
				<script type="text/javascript">
					alert('<%=rs.getString("name")%>'+'인증 통과')
					location.href="main.jsp"
				</script>
			<%}else{
				System.out.println("비밀번호 틀림");
				%>
				<script type="text/javascript">
					alert('비밀번호가 틀렸습니다')
					location.href="login.jsp"
				</script>
			<%}
		}else{ //해당 아이디가 존재하지 않는다면
			//System.out.println("아이디가 존재하지 않는다");
		%>
			<script type="text/javascript">
				alert('존재하지 않는 아이디 입니다')
				location.href="login.jsp"
			</script>
		<%}	%>
</body>
</html>




