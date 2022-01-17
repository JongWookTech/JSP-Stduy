<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int result = 5+7;
		request.setAttribute("result", result);
	%>
	<jsp:forward page="request_result.jsp"/>
</body>
</html>