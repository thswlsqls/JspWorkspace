<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
        <fmt:requestEncoding value="utf-8"/>
        <jsp:useBean id="dao" class="jsp07.TestDAO"></jsp:useBean>
 <table border="1">
 <tr> <th>이름</th><th>주소</th></tr>
         <c:forEach var="dto" items="${dao.getMembers()}">
 <tr>        <td>${dto.name }</td><td>${dto.addr }</td></tr>
         </c:forEach>
 <tr><td colspan="2"><a href="">클릭</a></td></tr>
 </table>
        <c:set var="list" value="${dao.getMembers() }" /> 
         <c:forEach var="dto" items="${ list}">
                 ${dto.name }:${dto.addr }<br>
         </c:forEach>
         <hr>
         <c:set var="dto" value="${dao.getUser(param.id) }" />
         ${dto.getName() }:${dto.name }<br>
         ${dto.getAddr() }:${dto.addr }<br>
        <hr>
         
         id : ${param.id }<br>
         pwd : ${param.pwd }
        
         <c:set var="result" value="${dao.userChk(param.id,param.pwd) }"/>
         <c:if test="${ result==0 }">
                 <script type="text/javascript">
                         //alert("로그인성공")
                 </script>
         </c:if>
          <c:if test="${ result!=0 }">
                 <script type="text/javascript">
                         //alert("로그인실패")
                 </script>
         </c:if>
</body>
</html>