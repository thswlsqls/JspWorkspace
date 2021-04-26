<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>index페이지 입니다</h1>
	<%
		Cookie[] cookieArr = request.getCookies();
		boolean bool = true;
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				if(c.getValue().equals("myCookie")){
					bool = false;
				}
			}
		}
	%>
	<% if(bool){ %>
	<script type="text/javascript">
		window.open("popup.jsp","","width=300, height=300, top=500, left=500")
	</script>
	<% } %>
</body>
</html>