<%@page import="com.docode.user.UserDTO"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
<jsp:useBean class="com.docode.user.UserDTO" id="user"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<%
	session.setAttribute("user", user);
	pageContext.forward("docode_myinfo.jsp");
%>
</body>
</html>