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
	UserDTO user = (UserDTO)request.getAttribute("user");
%>
	<h2>결과 페이지</h2>
	<p>
		id : <%=user.getUserid() %>
	</p>
	<p>
		pw : <%=user.getUserpw() %>
	</p>
	<p>
		name : <%= user.getUsename() %>
	</p>
</body>
</html>