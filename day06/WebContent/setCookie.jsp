<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setCookie.jsp</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("docode", "nicecode");
		response.addCookie(cookie);
		
		Cookie cookie2 = new Cookie("docode2", "goodcode");
		response.addCookie(cookie2);
		pageContext.forward("getCookie.jsp");
	%>
</body>
</html>