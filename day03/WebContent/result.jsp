<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력</title>
</head>
<body>
	<h2>결과 페이지</h2>
	<p>
		아이디 : <%=(String)request.getAttribute("id") %>
	<p>
	<p>
		비밀번호 : <%=(String)request.getAttribute("password") %>
	<p>
	<p>
		이름 : <%=(String)request.getAttribute("name") %>
	<p>
	<p>
		나이 : <%=(String)request.getAttribute("age") %>
	<p>
</body>
</html>