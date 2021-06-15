<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../default/header.jsp" />
	<div class="wrap" align="right">
	<form action="chkRegister.jsp" method="post">
		(*필수 항목)<input type="text" name="id" placeholder="아이디"><br>
		<input type="password" name="pwd" placeholder="비밀번호"><br>
		(*필수 항목)<input type="password" name="pwdConfirm" placeholder="비밀번호확인"><br>
		<input type="text" name="name" placeholder="이름"><br>
		<input type="text" name="addr" placeholder="주소"><br>
		<input type="text" name="tel" placeholder="전화번호"><br>
		<input type="submit" value="회원가입">
	</form>
	</div>
	<jsp:include page="../default/footer.jsp" />
</body>
</html>