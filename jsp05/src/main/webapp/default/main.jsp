<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.mainContainer{
		padding: 60px;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}
	.root{
		display: flex;
		flex-direction: column;
	}
	.name{
		position: relative;
		text-align:right;
		font-size: 18px;
		font-weight: 900;
		width: 100%;
		padding-bottom: 60px;
	}
	.wise-saying{
		text-align: center;
		font-size: 18px;
		font-weight: 900;
	}
</style>
</head>
<body>
	<div class="root">
	<%@ include file="header.jsp" %>
	<div class="mainContainer">
		<div>
			<h3 class="wise-saying">
				내 사전에 불가능은 없다.<br>
				불가능은 소극적인 자의 환영이며<br>
				비겁한 자의 도피처이다.
				<h4 class="name">-나폴레옹</h4>
			</h3>
		</div>
	</div>
	<hr>
	<%@ include file="/default/footer.jsp" %>
	</div>
</body>
</html>