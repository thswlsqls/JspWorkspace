<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>설문조사 폼 만들기</h1>
	<form action="views.jsp" method="post">
		이름 : <input type="text", placeholder="이름을 적어주세요." name="name"><br><br>
		소개 : <textarea rows="5" cols="15" name="intro"></textarea>
		<fieldset>
			<legend>연령 조사</legend>
			10대<input type="radio" name="age" value="10대">
			20대<input type="radio" name="age" value="20대">
			30대<input type="radio" name="age" value="30대">
			40대<input type="radio" name="age" value="40대">
			50대<input type="radio" name="age" value="50대">
		</fieldset>
		<fieldset>
			<legend>취사 조사</legend>
			책읽기<input type="checkbox" name="hobby" value="책읽기">
			춤추기<input type="checkbox" name="hobby" value="춤추기">
			멍때리기<input type="checkbox" name="hobby" value="멍타기">
			다른취미<input type="checkbox" name="hobby" value="다른취미">
			또다른취미<input type="checkbox" name="hobby" value="또다른취미">
		</fieldset>
		<input type="submit" value="전송">		
	</form>
	
</body>
</html>