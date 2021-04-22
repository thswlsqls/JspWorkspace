<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 입니다</h1>
	<h2>공지사항 입니다.</h2>
	<br>
	<h3>jsp application을 이용한<br>
	조회수 올리기 문제입니다.</h3>
	<a href="quizPrePost.jsp">돌아가기</a>
	<%
		String count = (String)application.getAttribute("count");
		if(count == null){
			application.setAttribute("count", "1");
		}else{
			int cnt01 = Integer.parseInt(count);
			cnt01++;
			application.setAttribute("count", cnt01+"");
		}
	%>
</body>
</html>