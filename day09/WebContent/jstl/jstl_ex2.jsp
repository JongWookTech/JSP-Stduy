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
	<c:set var="num" value="100"/>
	<c:if test="${num > 50 }">
		<script>
			alert("이 수는 50보다 크다.")
		</script>
	</c:if>
	
	<c:choose>
		<c:when test="${num lt 50 }">
		이 수는 50보다 작다.
		</c:when>
		<c:when test="${num lt 30 }"
		>이 수는 30보다 작다.
		</c:when>
		<c:otherwise>
		이 수는 50과 30보다 작지않다.
		</c:otherwise>
	</c:choose>
</body>
</html>