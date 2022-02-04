<%@page import="com.docode.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="user" class="com.docode.dto.UserDTO"/>
<%-- setProperty는 필드와 동일한 이름을 가진 파라미터가 있다면 value속성을 적지 않아도 자동으로 세팅된다.--%>
<%-- 
<jsp:setProperty property="userid" name="user"/>
<jsp:setProperty property="userpw" name="user"/>
<jsp:setProperty property="username" name="user"/>
<jsp:setProperty property="userage" name="user"/>
--%>
<jsp:setProperty property="*" name="user"/>
<body>
	<%
		UserDAO udao = new UserDAO();
		//String userid = request.getParameter("userid");
		//String userpw = request.getParameter("userpw");
		//String username = request.getParameter("username");
		//int userage = Integer.parseInt(request.getParameter("userage"));
		//
		//UserBean user = new UserBean();
		//user.setUserid(userid);
		//user.setUserpw(userpw);
		//user.setUsername(username);
		//user.setUserage(userage);
		
		udao.join(user);
		String userid = user.getUserid();
		Cookie cookie = new Cookie("joinid",userid);
		response.addCookie(cookie);
	%>
	<jsp:forward page="loginview.jsp"/>
</body>
</html>










