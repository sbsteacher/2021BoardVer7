<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<h1>리스트</h1>

<table>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>글쓴이</th>
		<th>작성일시</th>
	</tr>
	<c:forEach items="${requestScope.list}" var="item">
		<tr>
			<td>${item.iboard}</td>
			<td>${item.title}</td>
			<td>${item.writerNm}</td>
			<td>${item.regdt}</td>
		</tr>
	</c:forEach>
</table>

<div>
	<c:forEach begin="1" end="${requestScope.pagingCnt}" var="page">
		<c:choose>
			<c:when test="${page eq param.cPage || (empty param.cPage && page eq 1)}">
				<span class="colorRed">${page}</span>
			</c:when>
			<c:otherwise>
				<span><a href="list?cPage=${page}&searchType=${param.searchType}&searchText=${param.searchText}">${page}</a></span>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</div>
<div>
	<form action="list" method="get">
		<div>
			<select name="searchType">
				<option value="1" ${param.searchType == 1 ? 'selected': ''}>제목+내용</option>
				<option value="2" ${param.searchType == 2 ? 'selected': ''}>제목</option>
				<option value="3" ${param.searchType == 3 ? 'selected': ''}>내용</option>
				<option value="4" ${param.searchType == 4 ? 'selected': ''}>글쓴이</option>
			</select>
			<input type="search" name="searchText" value="${param.searchText}">
			<input type="submit" value="검색">
		</div>
	</form>
</div>









