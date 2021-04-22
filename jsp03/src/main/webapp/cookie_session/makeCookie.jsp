<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키를 생성합니다.</h2>
	<%
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(5);
		response.addCookie(cookie);
		
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("<br><hr>id : "+c.getName()+"<br>");
				out.print("value : "+c.getValue()+"<br>");
			}	
		}   
	%>
	<script type="text/javascript">
		window.close()
	</script>
</body>
</html>