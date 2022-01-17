<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Joinview</title>
</head>
<body>
<!-- 입력 -> 처리 -> 출력 -->
	<form action="join.jsp">
		<p>
			아이디 : <input name = "id">
		</p>
		<p>
			비밀번호 : <input type ="password" name = "password">
		</p>
		<p>
			이름 : <input name = "name">
		</p>
		<p>
			나이 : <input name="age">
		</p>
		<input type = "submit" value ="회원가입">
	</form>
</body>
</html>