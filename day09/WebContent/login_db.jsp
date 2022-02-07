<%@page import="com.docode.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_db</title>
</head>
<body>
	<%
		if(request.getHeader("Cookie")!=null){
			Cookie[] cookies = request.getCookies();
			for(Cookie c : cookies){
				if(c.getName().equals("joinid")){
					c.setMaxAge(0);
					response.addCookie(c);
					break;
				}
			}
		}
		UserDAO udao = new UserDAO();
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		if(udao.login(userid,userpw)){
			session.setAttribute("login_id", userid);
			pageContext.forward("loginview.jsp");
		}else{
			pageContext.forward("loginview.jsp?flag=false");
		}
	%>
</body>
</html>












