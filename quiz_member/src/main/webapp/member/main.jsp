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
	로그인 성공 페이지
	<%	if(session.getAttribute("login") == null){%>
		<script type="text/javascript">
			alert("로그인 먼저 하세요")
			location.href="login.jsp"
		</script>		
	<%}%>
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id="java1", pwd="1234";
	Connection con = DriverManager.getConnection(url,id,pwd);
	
	String sql = "select * from members";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	%>
	<table border="1">
		<tr>
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>주소</th><th>전화번호</th>
		</tr>
	<%while(rs.next()){%>
		<tr>
			<td><%=rs.getString("id") %></td>
			<td><%=rs.getString("pwd") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("addr") %></td>
			<td><%=rs.getString("tel") %></td>
		</tr>
	<%}%>
	<tr>
		<td colspan="5">
			<button type="button" onclick="location.href='logout.jsp'">
				로그아웃
			</button>
			<button type="button" onclick="location.href='showInfo.jsp'">
				계정정보
			</button>
		</td>
	</tr>
	</table>
	
</body>
</html>



