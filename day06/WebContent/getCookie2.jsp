<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getCookie2</title>
</head>
<body>
	<%
		String check = request.getHeader("Cookie");
		if(check != null){
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("ggobuk")){
					out.print(cookie.getName()+" : ");
					out.print(cookie.getValue()+"<br>");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
		}
	%>
	<a href="deleteCheck.jsp">쿠키 삭제 확인하기!</a>
</body>
</html>








