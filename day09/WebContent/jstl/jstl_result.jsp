<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	일반 for문 결과<br>
	<c:forEach var="i" begin="0" end="3" step="1">
		${paramValues.P_index[i]}<br>
	</c:forEach>
	<hr>
	빠른 for문 결과<br>
	<c:forEach items="${paramValues.P_index }" var="i">
		${i }<br>
	</c:forEach>
</body>
</html>