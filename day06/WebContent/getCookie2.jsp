<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String check = request.getHeader("Cookie");
		
		if(check != null){
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("docode")){
					out.print(cookie.getName()+ " : ");
					out.print(cookie.getValue() + "<br>");
					cookie.setMaxAge(0);
				}
			}
		}
	%>
</body>
</html>