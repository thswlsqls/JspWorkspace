<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	h1{
		background-color: gray;
	}
</style>
<script>
	function btnClick() {
		location.href="webContent.jsp"
	}
	function btnClick1() {
		location.href="./test1/test1.jsp"
	}
	function btnClick2() {
		location.href="./test1/test2/test2.jsp"
	}
</script>
</head>
<body>
	/ : 현재 프로젝트 위치(프로젝트의 위치)<br>
	../ : 한단계 전<br>
	../../ : 두단계 전<br>
	경로 : 상대경로(현재 파일의 위치에서 찾는다)<br>
	<a href="webContent.jsp">webContent.jsp이동 합니다</a>
	<a href="./test1/test1.jsp">test1.jsp이동 합니다</a>
	<a href="./test1/test2/test2.jsp">test2.jsp이동 합니다</a>	
<hr>
        <% int test = 4567; %>
        <%= test %>
<hr>
    <%                                 
        int total = 0;
        int oddSum=0,evenSum=0,testSum=0;
        for (int i=1 ; i<=100 ; i++){
            total += i;
            if(i%2==0) evenSum+=i;
            if(i%2==1) oddSum+=i;
            if(i%3==0) testSum+=i;
        }
    %>
    1 ~ 100 = <%= total %><br>
    1 ~ 100 까지의 짝수의 합 : <%=evenSum %><br>
    1 ~ 100 까지의 홀수의 합 : <%=oddSum %><br>
    1 ~ 100 까지의 3의 배수의 합 : <%=testSum %>
<hr>
        <% int num = 123; %>
        <%= num %><br>
        <%= "test입니다" %>
<hr>
        <h1>jsp 시작입니다</h1>
        <%--  --%>
        <%
        		/*
        		num = 100;
                System.out.print(num);
                out.print("<h2>jsp 값"+num+"</h2>");    
        		*/
        %>
        <h1>jsp 끝입니다</h1>
        <button type="button" onclick="btnClick()">webContent.jsp이동 합니다</button>
        <button type="button" onclick="btnClick1()">test1.jsp이동 합니다</button>
     	<button type="button" onclick="btnClick2()">test2.jsp이동 합니다</button>  
</body>
</html>
