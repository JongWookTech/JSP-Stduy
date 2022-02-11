<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>해보자 코딩 회원가입 편<h3><br>
	<p>로그인</p>
	<form>
		<p>
			아이디<input type="text" name="userid">
		</p>
		<p>
			비밀번호<input type="password" name="userpw">
		</p>
		<p>
			<input type="submit" value="로그인">
			<input type="button" value="회원가입" onclick="location.href='joinview.jsp'">
		</p>
	</form>
</body>
</html>