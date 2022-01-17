<%@page import="dto.UserDTO"%>
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
		UserDTO	user = new UserDTO("apple","abcd1234","김사과",10);
		request.setAttribute("user", user);
		pageContext.forward("dto_result.jsp");
	%>
</body>	
</html>