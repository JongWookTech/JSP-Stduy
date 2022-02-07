<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	Paramter 추가하기<br><hr>
	<form action = "el_result.jsp">
		paramdata1 : <input type = "text" name="P_data1"><br>
		paramdata2 : <input type = "text" name="P_index"><br>
		paramdata3 : <input type = "text" name="P_index"><br>
		<input type="submit" value="전송하기">
	</form>
</body>
</html>