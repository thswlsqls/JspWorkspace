<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>quiz_register.jsp<br>
<h1>회원가입 페이지입니다.</h1>
	
	<form action="quiz_chkRegister.jsp" method="post">
		<input type="text" name="id" placeholder="아이디">(*필수 항목)<br>
		<input type="password" name="pwd" placeholder="비밀번호"><br>
		<input type="password" name="pwdConfirm" placeholder="비밀번호확인">(*필수 항목)<br>
		<input type="text" name="name" placeholder="이름"><br>
		<input type="text" name="addr" placeholder="주소"><br>
		<input type="text" name="tel" placeholder="전화번호"><br>
		<input type="submit" value="회원가입">
	</form>

</body>
</html>