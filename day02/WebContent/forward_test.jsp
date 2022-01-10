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
	System.out.print("콘솔에서 확인해보기");
%>
	<jsp:forward page="destination.jsp"></jsp:forward>
</body>
</html>