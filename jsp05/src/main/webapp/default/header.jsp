<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{ margin:0; }
	.wrap { width: 1000px; margin: auto; }
	
	header{ 
		z-index: 111;
		width: 100%; position: relative; top: 0; padding-top: 30px;
		/* background-image: url("test.png"); */
		background-color: white;	
	}
		nav{ background-color: olive; }
	nav ul{ list-style: none; display: flex; padding: 10px; justify-content: flex-end; }
	nav ul li{ padding: 10px; margin: 0 10px; }
	nav a{ text-decoration: none; color: white; }
	nav a:hover{ color: orange; padding-bottom: 3px; 
		border-bottom: 1px solid orange; transition: all 0.25s; }
	
	.title{
		color: burlywood; font-family: Gabriola;
		text-shadow: 10px 10px 15px black; font-size: 70px;
		text-align: center; padding: 15px 0;
	}
</style>

</head>
<body>
	<header>
		<div class="wrap">
			<h1 class="title">CARE LAB</h1>
		</div>
		<nav>
			<div class="wrap">
				<ul>
					<li><a href="#">HOME</a></li>
				</ul>
			</div>
		</nav>
	</header>
</body>
</html>