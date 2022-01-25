<%@page import="com.docode.user.UserDTO"%>
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
		UserDTO user = (UserDTO)session.getAttribute("user");
	%>
	<p>
		회원 아이디 : <%= user.getUserid()%>
	</p>
	<p>
		회원 비밀번호 : <%= user.getUserpw()%>
	</p>
	<p>
		회원 이름 : <%= user.getUsername()%>
	</p>
	<p>
		회원 나이 : <%= user.getUserage()%>살
	</p>
	
	<a href="docode_logout.jsp">로그아웃 하기</a>
</body>
</html>