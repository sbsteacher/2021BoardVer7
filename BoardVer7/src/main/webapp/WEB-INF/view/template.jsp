<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${requestScope.title}</title>
</head>
<body>
	<jsp:include page="/WEB-INF/view/${requestScope.page}.jsp"></jsp:include>
</body>
</html>