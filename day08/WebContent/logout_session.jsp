<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout_session</title>
</head>
<body>
	<%
		session.setAttribute("login_id", null);
		pageContext.forward("loginview.jsp");
	%>
</body>
</html>