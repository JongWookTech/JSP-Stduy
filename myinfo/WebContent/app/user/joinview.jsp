<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
	<h2>해보자 코딩 회원가입 창</h2>
</p>
	<form name="joinform" action="${pageContext.request.contextPath}/user/UserJoinOk.us" method="post">
	<p>
		아이디<input type="email" name="userid">
	</p>
	<p>
		비밀번호<input type="password" name="userpw">
	</p>
	<p>
		비밀번호 확인<input type ="password" name="userpw_re">
	</p>
	<p>
		핸드폰 번호<input name="userphone">
	</p>
	<p>
		생년월일
		<select name="birth">
			<c:forEach var="i" begin="1920" end="2022" step="1">
				<option>${i }</option>
			</c:forEach>
		</select>
		-
		<select name="month">
			<c:forEach var="i" begin="1" end="12" step="1">
				<option>${i }</option>
			</c:forEach>
		</select>
		-
		<select name="day">
			<c:forEach var="i" begin="1" end="31" step="1">
				<option>${i }</option>
			</c:forEach>
		</select>
	</p>
	<p>
		<input type="button" onclick="submit();" value="가입하기">
	</p>
</form>
</body>
<script>
	function join(){
	//여기서 정규식하면됨
		j_form.submit();
	}
</script>
</html>