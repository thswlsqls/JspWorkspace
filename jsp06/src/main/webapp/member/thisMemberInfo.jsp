<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.wrap-content{
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}
	.memberInfo-title{
	 padding: 30px;
	}
	.thLeft {
		align: left;
	}
</style>
</head>
<body>
	
	<jsp:include page="../default/header.jsp" />
	<div class="wrap-content">
		<h1 class="memberInfo-title">개인 정보</h1>
		<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system", pwd="1234";
		DriverManager.getConnection(url, id, pwd);
		Connection con = DriverManager.getConnection(url, id, pwd); 
		
		String userName = request.getParameter("name");
		
		String sql = "select * from members where name = '" + userName +"'";
		
		PreparedStatement ps = con.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();%>
		
		<table border="0" width="400px">
			<% while(rs.next()){ %>
				<tr>
					<th>아이디</th>
					<th class="thLeft"><%=rs.getString("id") %></th>
				</tr>
				<tr>
					<th>비밀번호</th>
					<th class="thLeft"><%=rs.getString("pwd") %></th>
				</tr>
				<tr>
					<th>이름</th>
					<th class="thLeft"><%=rs.getString("name") %></th>
				</tr>
				<tr>
					<th>주소</th>
					<th class="thLeft"><%=rs.getString("addr") %></th>
				</tr>
				<tr>
					<th>전화번호</th>
					<th><%=rs.getString("tel") %></th>
				</tr>
			<% } %>
		</table>
	</div>
	<jsp:include page="../default/footer.jsp" />
</body>
</html>