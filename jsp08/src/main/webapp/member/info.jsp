<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<%--
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	--%>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	
	<%-- MemberDTO dto = dao.info( request.getParameter("id") ); --%>
	<c:set var="dto" value="${dao.info(param.id) }"/>
	
	<jsp:include page="../default/header.jsp" />
	<div class="wrap" style="width:300px;">
		<h1>내용 상세 보기</h1>
		<table width="300">
			<tr><td colspan="2"><hr></td></tr>
			<tr> <th>아이디</th>   <td>${dto.getId()}<%--=dto.getId() --%></td> </tr>
			<tr> <th>비밀번호</th> <td>${dto.getPwd()}<%--=dto.getPwd() --%></td> </tr>
			<tr> <th>이름</th>    <td>${dto.getName()}<%--=dto.getName() --%></td> </tr>
			<tr> <th>주소</th>    <td>${dto.getAddr()}<%--=dto.getAddr() --%></td> </tr>
			<tr> <th>전화번호</th> <td>${dto.getTel()}<%--=dto.getTel() --%></td> </tr>
			<tr>
				<td colspan="2">
					<hr>
					<button type="button" class="btn btn-danger"
			onclick="location.href='delete.jsp?id=${dto.getId()}<%--=dto.getId()--%>'">
						삭제
					</button>
					<button type="button" class="btn btn-info"
			onclick="location.href='modifyView.jsp?id=${dto.getId()}<%--=dto.getId()--%>'">
						수정
					</button>
					<hr>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="../default/footer.jsp" />
</body>
</html>




