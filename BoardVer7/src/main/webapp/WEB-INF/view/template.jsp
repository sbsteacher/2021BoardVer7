<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/res/css/common.css">
<title>${requestScope.title}</title>
</head>
<body>
	<header>
		<nav>
			<ul>
				<li>로그아웃</li>
				<li>로그인</li>
				<li>리스트</li>
				<li>글쓰기</li>
				<li>좋아요</li>
			</ul>
		</nav>
	</header>
	<section>
		<jsp:include page="/WEB-INF/view/${requestScope.jsp}.jsp"></jsp:include>
	</section>
</body>
</html>