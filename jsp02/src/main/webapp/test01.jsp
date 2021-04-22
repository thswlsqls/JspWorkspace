<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>test01.jsp<br>
	<h3>get방식</h3>
	<form action="get.jsp" method="get">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" value="get전송"><br>
	</form>
	
	<h3>post방식</h3>
	<form action="post.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" value="post전송"><br>
	</form>

</body>
</html>