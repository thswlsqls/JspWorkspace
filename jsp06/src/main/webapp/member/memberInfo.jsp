<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.a {color: green;}
	.a:hover { color: lime; }
</style>
</head>
<body>
`	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<% ArrayList<MemberDTO> list = dao.memberViews(); %>
<jsp:include page="../default/header.jsp" />
	<div class="wrap">
		<h1 style="text-align: center">회원 목록</h1>
		<table  class="table table-dark table-hover">
			<tr>
				<th>이름</th> <th>주소</th> <th>전화번호</th>
			</tr>
			<%for(MemberDTO dto : list){ %>
			<tr>
				<td>
					<a class="a" href="info.jsp?id=<%=dto.getId() %>">
						<%=dto.getName() %>
					</a>
				</td> 
				<td><%=dto.getAddr() %></td> 
				<td><%=dto.getTel() %></td>
			</tr>
			<%} %>
		</table>
	</div>
<jsp:include page="../default/footer.jsp" />
</body>
</html>




