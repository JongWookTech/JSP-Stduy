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
			아이디 <input name="userid">&nbsp;&nbsp;<input type="button" value="중복체크" onclick="checkId()">
		</p>
		<p>
			비밀번호 <input type="password" name="userpw">
		</p>
		<p>
			이름 <input name="username">
		</p>
		<p>
			나이 <input name="userage">
		</p>
		<input type="button" value="회원가입" onclick="sendit()">
	</form>
</body>
<script>
	function checkId(){
		let idInput = document.joinform.userid;
		if(idInput.value == "" || idInput.value == null){
			alert("아이디를 입력하세요!");
			idInput.focus();
			return false;
		}
		let xhr = new XMLHttpRequest();
		xhr.open("GET","checkId.jsp?userid="+idInput.value,true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 201)){
				console.log(xhr.responseText);
				if(xhr.responseText.trim() == "O"){
					document.getElementById("text").innerHTML = "사용할 수 있는 아이디입니다.";
				}else{
					document.getElementById("text").innerHTML = "중복된 아이디입니다.";
				}
			}
		}
	}
	function sendit(){
		let joinform = document.joinform;
		let idTag = joinform.userid;
		let pwTag = joinform.userpw;
		let nameTag = joinform.username;
		let ageTag = joinform.userage;
		
		if(idTag.value == "" || idTag.value == null){
			alert("아이디를 입력하세요!");
			idTag.focus();
			return false;
		}
		if(idTag.value.length<4 || idTag.value.length>12){
			alert("아이디는 4자리 이상 12자리 이하로 입력하세요!");
			idTag.focus();
			return false;
		}
		let hangle = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if(hangle.test(idTag.value)){
			alert("아이디에는 한글을 쓸 수 없습니다!");
			idTag.focus();
			return false;
		}
		if(document.getElementById("text").innerHTML == "중복된 아이디입니다."){
			alert("중복된 아이디는 사용할 수 없습니다!");
			return false;
		}
		if(document.getElementById("text").innerHTML != "사용할 수 있는 아이디입니다."){
			alert("중복체크를 먼저 해주세요!");
			return false;
		}
		if(pwTag.value == "" || pwTag.value == null){
			alert("비밀번호를 입력하세요!");
			return false;
		}
				//대문자,소문자,숫자,해당 특수문자들이 다 포함된 8자 이상인지 판단하는 정규식
		let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~!@#$%^&*_-]).{8,}$/;
		if(!reg.test(pwTag.value)){
			alert("비밀번호는 8자 이상이며, 숫자, 대문자, 소문자, 특수문자 모두를 포함해야 합니다.");
			pwTag.focus();
			return false;
		}
		//연속된 문자가 있는지 확인하는 정규식
		if(/(\w)\1\1\1/.test(pwTag.value)){
			alert("비밀번호는 같은문자를 4번 사용하실 수 없습니다!");
			pwTag.focus();
			return false;
		}
		if(pwTag.value.search(' ') != -1){
			alert("비밀번호는 공백을 포함할 수 없습니다!");
			pwTag.focus();
			return false;
		}
		if(nameTag.value == "" || nameTag.value == null){
			alert("이름을 입력하세요!");
			nameTag.focus();
			return false;
		}
		if(ageTag.value == "" || ageTag.value == null){
			alert("나이를 입력하세요!");
			ageTag.focus();
			return false;
		}
		//여기까지 왔다면 위의 유효성 검사를 다 통과했다는 뜻이므로 폼 제출
		joinform.submit();
	}
	
	
	
	
	
</script>
</html>















