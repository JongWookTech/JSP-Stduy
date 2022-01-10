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
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String username = request.getParameter("username");
		
		System.out.print("~~~~");
		
		boolean flag = true;
	%>
	<jsp:forward page="join_result.jsp">
		<jsp:param value="<%=flag%>" name ="flag"/>
	</jsp:forward>
</body>
</html>