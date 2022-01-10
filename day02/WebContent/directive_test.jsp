<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="myErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>directive_test</title>
</head>
<!-- 1 -->
<body>
	<%@page info="설명을 다는 디렉티브 태그"%>
	Today is : <%= new Date() %>
	
	
	<!-- 해당 부분은 오류이다. -->	
	<%=Integer.parseInt("JSP") %>
</body>
</html>