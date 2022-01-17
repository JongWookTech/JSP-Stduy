<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirect_test</title>
</head>
<body>
	<%
		request.setAttribute("data",10);
		response.sendRedirect("redirect_result.jsp");
	%>
</body>
</html>