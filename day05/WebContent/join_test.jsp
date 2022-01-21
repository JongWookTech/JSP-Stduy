<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="join_result.jsp" method="post">
		<p>
			아이디 <input name="userid">
		</p>
		<p>
			비밀번호 <input type="password" name="userpw"/>
		</p>
		<p>
			이름 <input name="username">
		</p>
		<p>
			나이 <input name="userage">
		</p>
		<button onclick="submit();">회원가입</button>
	</form>
</body>
</html>