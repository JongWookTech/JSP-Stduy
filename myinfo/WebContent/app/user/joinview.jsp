<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>해보자 코딩 회원가입 창</h2>
	<form action="" name="joinform">
		<p>
			아이디 <input type="text" name="userid">
		</p>
		<p>
			비밀번호 <input type="password" name="userpw">
		</p>
		<p>
			비밀번호 확인 <input type="text" name="userpw_re">
		</p>
		<p>
			이름 <input type="text" name="username">
		</p>
		<p>
			핸드폰 번호 <input type="text" name="userphone">
		</p>
		<p>
			우편번호<br>
			<input type="text" name="zipcode" id="sample6_postcode"
			placeholder="우편번호" onclick="sample6_execDaumPostcode()" readonly>
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
		</p>
		<p>
			<input type="text" name="useraddr" id="sample6_address" placeholder="주소" readonly>
		</p>
		<p>
			<input type="text" name="useraddrdetail" id="sample6_detailAddress" placeholder="상세주소">
			<input type="text" name="useraddretc" id="sample6_extraAddress" placeholder="참고항목" readonly>
		</p>
		<input type="button" value="회원가입" onclick="joinCheck();">
	</form>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="user.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	
</script>
</html>