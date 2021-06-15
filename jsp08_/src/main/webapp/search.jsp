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
<body>search.jsp<br>
<fmt:requestEncoding value="utf-8"/>
<jsp:useBean id="dao" class="testBoard.TestDAO"/>
	<c:set var="post" value="${param.post}"/>
	<c:set var="number" value="${param.post}"/>
	<c:choose>
		<c:when test="${param.option == 'title'}" >
			<c:set var="list" value="${dao.getByTitle(post)}"/>
		</c:when>
		<c:otherwise>
			<c:set var="list" value="${dao.getByNum(post)}"/>
		</c:otherwise>
	</c:choose>
	<table border="1">
		<tr>
			<th>번호</th> <th>제목</th> <th>등록날짜</th> <th>조회수</th>
		</tr>
		<c:choose>
			<c:when test="${list.size() != 0}">
				<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.num}</td>
						
						<td>
							<a href="count.jsp?num=${dto.num}">
								${dto.title}
							</a>
						</td>
					
						<td>${dto.pdate}</td>
						<td>${dto.count}</td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<th colspan="4">등록된 데이터가 없습니다</th>
				</tr>
			</c:otherwise>
		</c:choose>
		<tr>
			<form action="search.jsp" method="post">
				<th>
				<select name="option">
					<option value="title">제목</option>
					<option value="number">번호</option>
				</select>
				</th> 
				<th colspan="3">
					<input type="text" name="post">
					<input type="submit" value="검색">
					<input onclick="location.href='list.jsp'" type="button" value="목록 이동">
				</th>
			</form>
		</tr>
	</table>
</body>
</html>