<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinview</title>
</head>
<body>
	<form name="joinform" action="join_db.jsp" method="post">
		<p>
			<span id="text" style="color:red; font-weight:bold;"></span><br>
			<label>아이디 <input name="userid">&nbsp;&nbsp;</label>
		</p>
		<p>
			<label>비밀번호 <input type="password" name="userpw"></label>
		</p>
		<p>
			<label>비밀번호 확인 <input type="password" name="userpw_re"></label>
		</p>
		<p>
			<label>이름 <input name="username"></label>
		</p>
		<p>
			<label>나이 <input name="userage"></label>
		</p>
		<p>
			<label>핸드폰 번호 <input name="userphone"></label>
		</p>
		<p>
			우편번호<br>
			<input type="text" name="zipcode" id="sample6_postcode" placeholder="우편번호"
			size = "7"			
			 onclick="sample6_execDaumPostcode()">
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
		</p>
		<p>
			<input type="text" name="useraddr" id="sample6_address" size="25" placeholder="주소" readonly>
		</p>
		<p>
			<input type="text" name="useraddrdetail" id="sample6_detailAddress" size="17" placeholder="상세주소">
			<input type="text" name="useraddretc" id="sample6_extraAddress" size ="8"placeholder="참고항목" readonly>
		</p>
		<input type="button" value="회원가입" onclick="sendit()">
	</form>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="user.js"></script>
</html>















