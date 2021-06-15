
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>loginChk.jsp<br>
<%@page import="members.MemberDTO"%>
	<%
		String userId = request.getParameter("id");
		String userPwd = request.getParameter("pwd");
		
		MemberDTO dto = new MemberDTO();
		dto.setId("test"); dto.setPwd("1234");
		
		if(userId.equals(dto.getId()) && userPwd.equals(dto.getPwd())){
			out.print("로그인 성공");
		}else{
			out.print("로그인 실패");
		}
	%>
</body>
</html>





