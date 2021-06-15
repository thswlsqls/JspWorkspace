<%@page import="members.MemberDTO"%>
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
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<%
		String userId = request.getParameter("id");
		String userPwd = request.getParameter("pwd");
		MemberDTO dto = dao.chkUser(userId, userPwd);
		if(dto != null){ // 해당 아이디가 있을경우 실행
			if(userPwd.equals(dto.getPwd())){//로그인 성공 
				session.setAttribute("login",userId );
			%>
				<script type="text/javascript">
					alert('로그인 성공')
					location.href='successLogin.jsp'
				</script>
			<%}else{ %>//비밀번호 틀림
				<script type="text/javascript">
					alert('비밀번호 틀림')
					location.href='login.jsp'
				</script>
			<%}
		}else{%> // 해당 아이디가 없을 경우 실행 
			<script type="text/javascript">
				alert('해당 아이디는 존재하지 않습니다')
				location.href='login.jsp'
			</script>	
		<%}%>

</body>
</html>








