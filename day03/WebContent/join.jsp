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
	request.setCharacterEncoding("UTF-8");
	
	String id =request.getParameter("id");
	String password = request.getParameter("password");
 	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	request.setAttribute("id",id);
	request.setAttribute("password", password);
	request.setAttribute("name", name);
	request.setAttribute("age",age);
	
	pageContext.forward("result.jsp");
	%>
</body>
</html>