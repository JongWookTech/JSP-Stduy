<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginview</title>
</head>
<%
	String joinid = null;
	String check = request.getHeader("Cookie");
	if(check != null){
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies){
			if(c.getName().equals("joinid")){
				joinid = c.getValue();
				break;
			}
		}
	}
	System.out.println(joinid);
%>
<body>
	<%
	String login_id = (String)session.getAttribute("login_id");
	if(login_id == null){
		String flag=request.getParameter("flag");
		if(flag != null){
			if(flag.equals("false")){
	%>
			<script>
				alert("아이디나 비밀번호가 잘못되었습니다!");
			</script>
		<%
			}
		}
		%>
		<form name="loginform" action="login_db.jsp" method="post">
			<p>
				아이디 <input value="<%=joinid!=null?joinid:""%>"
				name="userid">
			</p>
			<p>
				비밀번호 <input type="password" name="userpw">
			</p>
			<input type="button" value="로그인" onclick="sendit();">
		</form>
	<%
	}else{
	%>
		<p><%=login_id%>님 환영합니다</p>
		<a href="logout_session.jsp">로그아웃</a>
	<%
	}
	%>
</body>
<%
	if(joinid != null){
%>
		<script>
			document.loginform.userpw.focus();
		</script>
<%
	}
%>
<script>
	let frm = document.loginform;
	let idTag = frm.userid;
	let pwTag = frm.userpw;
	
	function sendit(){
		if(idTag.value == "" || idTag.value == null){
			alert("아이디를 입력하세요!");
			idTag.focus();
			return false;
		}
		if(pwTag.value == "" || pwTag.value == null){
			alert("비밀번호를 입력하세요!");
			pwTag.focus();
			return false;
		}
		frm.submit();
	}
	


</script>
</html>