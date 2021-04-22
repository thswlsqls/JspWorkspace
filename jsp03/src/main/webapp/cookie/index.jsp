<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp<br>
	index페이지 입니다.
	<%
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(5);
		response.addCookie(cookie);
		
		Cookie[] cookieArr = request.getCookies();
		boolean bool = true;
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("<br><hr>id : "+c.getName()+"<br>");
				out.print("value : "+c.getValue()+"<br>");
				if(c.getValue().equals("myCookie")){
					bool = false;
				}
			}	
		}   
	%>
	<% if(bool){ %>
		<script type="text/javascript">
			window.open("popup.jsp", "", "width=300, height=300, top=500, left=500")
		</script>
	<% } %>
</body>
</html>