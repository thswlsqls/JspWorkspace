<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function pwdChk(){
		console.log("온 체인지 동작")
		pwd = document.getElementById("pwd")
		pwdchk = document.getElementById("pwdchk")
		label = document.getElementById("label")
		if( pwd.value == pwdchk.value ){
			label.innerHTML = "비밀번호 인증"
		}else{
			label.innerHTML = "비밀번호 인증 실패!!!"
				pwd.value = ""
				pwdchk.value = ""
				pwd.focus()
		}
	}
	function chk(){
		console.log("버튼 클릭")
		id = document.getElementById("id")
		pwd = document.getElementById("pwd")
		pwdchk = document.getElementById("pwdchk")
		if(id.value == ""){
			alert('아이디는 필수 항목입니다')
			id.focus()
		}
		else if(pwd.value == ""){
			alert('아이디는 필수 항목입니다')
			pwd.focus()
		}
		else if(pwdchk.value == ""){
			alert('아이디는 필수 항목입니다')
			pwdchk.focus()
		}else{
			fo.submit()
		}
	}
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	%>
	<form id="fo" action="save.jsp" method="post">
		<input type="text" name="id" id="id" placeholder="input id">
		<label>필수항목</label><br>
		<input type="text" name="pwd" id="pwd" placeholder="input pwd">
		<label>필수항목</label><br>
		<input type="text" id="pwdchk" onchange="pwdChk()" placeholder="input pwd chk">
		<label id="label">필수항목</label><br>
		<input type="text" name="name" placeholder="input name"><br>
		<input type="text" name="addr" placeholder="input address"><br>
		<input type="text" name="tel" placeholder="input number"><br>
		<input type="button" onclick="chk()" value="가입">
	</form>
</body>
</html>