<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function popUpCheck(){
		var makeCookie = window.open("makeCookie.jsp", "", "width=300, height=300, top=500, left=500");
		window.close();
	}
</script>
</head>
<body>
	<h1> 공 지 사 항 </h1>
	어쩌고 저쩌고...<hr>
	<input type="checkbox" onclick="popUpCheck();">
	하루동안 열지 않음
</body>
</html>