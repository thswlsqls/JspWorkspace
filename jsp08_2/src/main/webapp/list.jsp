<%@page import="org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation"%>
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
<body>list.jsp<br>
<fmt:requestEncoding value="utf-8"/>
<jsp:useBean id="dao" class="testBoard.TestDAO"/>
<c:choose>
	<c:when test="">
	</c:when>
	
</c:choose>

<c:set var="listS" value="${3*(param.start-1)+1}"/>
<c:set var="listE" value="${3*(param.start-1)+3}"/>


<c:set var="list" value="${dao.list(listS, listE)}"/>

	
<c:set var="totalPage" value="${dao.getTotalPage()}" />
	
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
		<tr align="right">
			<td colspan="4">
			<c:choose>
				<c:when test="${param.start == null}">
					<c:set var="start" value="1" /> 
				</c:when>
				<c:otherwise>
					<c:set var="start" value="${param.start}"/>
				</c:otherwise>
			</c:choose>
			
			<c:choose>
				<c:when test="${start > 1}">
					<button type="button" onclick="location.href='list.jsp?start=${start-1}'">이전</button>		
				</c:when>
				<c:otherwise>
					<button type="button" disabled>이전</button>
				</c:otherwise>
			</c:choose>
			
			<c:forEach var="cnt" begin="1" end="${totalPage/3}" step="1">
				<a href="list.jsp?start=${cnt }">[${cnt }]</a>
			</c:forEach>
			
			<c:choose>
				<c:when test="${start < totalPage/3}">
					<button type="button" onclick="location.href='list.jsp?start=${start + 1}'">다음</button>		
				</c:when>
				<c:otherwise>
					<button type="button" disabled>다음</button>
				</c:otherwise>
			</c:choose>
				<fmt:parseNumber var="pages" integerOnly="true" value="${totalPage/3}" />
				${start} / ${pages}
				<button type="button" 
					onclick="location.href='regForm.jsp'">등록</button>
			</td>
		</tr>
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
				</th>
			</form>
		</tr>
	</table>
	
</body>
</html>