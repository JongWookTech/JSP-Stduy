<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL_TEST_01</title>
</head>
<body>
	<%
		String data = "Hello";
		pageContext.setAttribute("data",data);
		Cookie cookie = new Cookie("Cookie","break-time");
		response.addCookie(cookie);
	%>
	\${data} : ${data }<br>
	${10+3 }<br>
	${10>3 }<br>
	<hr>
	<form action="el_test2.jsp">
		브랜드<input type="text" name="brand"><br>
		색깔<input type="text" name="color"><br>
		<input type="submit" value="이동하기!">
	</form>
</body>
</html>