<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>어디로든 문~</h2>
	<form action ="controller.jsp">
		<select name ="site">
			<option value ="naver">네이버</option>
			<option value ="google">구글</option>
			<option value ="daum">다음</option>
		</select>
		<input type="submit" value ="전송하기">
	</form>
</body>
</html>
