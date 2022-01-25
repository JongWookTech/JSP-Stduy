<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setCookie.jsp</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("ggobuk","good");
		response.addCookie(cookie);
		//한글이 깨지는 경우 URLEncoder를 이용해 인코딩을 해주고
		//그 인코딩 된 값을 대신 value로 추가해준다.
		//String value = URLEncoder.encode("맛있다.","UTF-8");
		//System.out.print(value);
		Cookie cookie2 = new Cookie("homerunball","맛있다");
		response.addCookie(cookie2);
	%>
	<a href="getCookie1.jsp">쿠키 저장 끝!</a>
</body>
</html>