<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 및 회원가입</title>
</head>
<body>
<p>
	<h2>해보자 코딩 로그인 창</h2>
</p>
<form name ="loginform" action="">
	<p>
	로그인 <input name="userid">
	</p>
	 <p>
	 비밀번호 <input type="password" name="userpw">
	 </p>
	 <p>
	 	<input type="button" onclick="submit();" value="로그인">
	 	<input type="button" onclick ="window.location.href='joinview.jsp'" value="회원가입"> 
	 </p>
</form>
</body>
</html>