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
	<form>
		단을 선택하세요<br> <select name="dan">
			<c:forEach var="i" begin="1" end="9" step="1">
				<option value="${i }">${i }</option>			
			</c:forEach>
		</select>
		<input type="submit" value="단 출력">
	</form>
	
	<c:if test="${!empty param.dan}">
		<c:forEach var="i" begin="1" end="9" step="1">
			${param.dan } * ${i } = ${i*param.dan }	<br>
		</c:forEach>
	</c:if>
</body>
</html>