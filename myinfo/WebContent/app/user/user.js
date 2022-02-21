function join(){
	let j_form = document.j_form;
	let id = j_form.userid;
	let pw = j_form.userpw;
	let phone = j_form.userphone;

	if(id.value == "" || id.value == null){
		alert("아이디는 필수 항목입니다.")
		id.focus();
		return false;
	}
	// 이메일 형식 같은 경우 후에 이메일 인증을 통한 실존하는 이메일만 가입할 수 있도록
	// 할 것이기 때문에 공백 정규식만 작성한다.
	
	if(pw.value == "" || pw.value == null){
		alert("비밀번호는 필수 항목입니다.")
		pw.focus();
		return false;
	}
	if (pw.value.search(' ') != -1) {
		alert("비밀번호는 공백을 포함할 수 없습니다");
		pw.focus();
		return false;
	}
	
	let reg_pw = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~!@#$%^&*_-]).{7,}$/;
	if (!reg_pw.test(pw.value)) {
		alert("비밀번호는 7자 이상이여야 하며, 숫자와 대문자, 소문자, 특수문자 모두를 포함해야 합니다.");
		pw.focus();
		return false;
	}
	if (phone.value == "" || phone.value == null) {
		alert("핸드폰번호를 입력하세요!");
		phone.focus();
		return false;
	}
	let reg_Phone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
    if (!reg_Phone.test(phone.value)) {
        alert("핸드폰 번호를 확인해주세요.");
        phone.focus();
        return false;
    }
    
    if(phone.value.search('-') != -1){
    	alert("핸드폰 번호에는 -가 들어갈 수 없습니다.")
    	phone.focus();
    	return false;
    }
    
    
	j_form.submit();
}







