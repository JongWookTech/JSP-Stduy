<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="com.docode.usertest.UserDTO"/>

<jsp:setProperty property="userid" name ="user"/>
<jsp:setProperty property="userpw" name ="user"/>
<jsp:setProperty property="username" name ="user"/>
<jsp:setProperty property="userage" name ="user"/>
	<p>
		회원 아이디 : <jsp:getProperty property="userid" name="user"/>	
	</p>
	<p>
		회원 비밀번호 : <jsp:getProperty property="userpw" name="user"/>
	</p>
	<p>
		회원 이름 : <jsp:getProperty property="username" name="user"/>
	</p>
	<p>
		회원 나이 : <jsp:getProperty property="userage" name="user"/>
	</p>
</body>
</html>