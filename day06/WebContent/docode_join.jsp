<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="docode_join_doing.jsp" method="post">
		<p>
			아이디 : <input type="text" name="userid">
		</p>
		<p>
			비밀번호 : <input type="password" name="userpw">
		</p>
		<p> 
			이름 : <input type="text" name="username">
		</p>
		<p>
			나이 : <input type="text" name="userage">
		</p>
		<button onclick="submit();">Guest계정으로 바로 로그인</button>
	</form>
</body>
</html>