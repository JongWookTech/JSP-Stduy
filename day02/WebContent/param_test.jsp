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
			int result = 3+5;
		%>
		<jsp:forward page="destination2.jsp">
			<jsp:param value="<%=result %>" name ="data"/>
		</jsp:forward>
</body>
</html>