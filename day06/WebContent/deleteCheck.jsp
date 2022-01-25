<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteCheck</title>
</head>
<body>
	<%
		String check = request.getHeader("Cookie");
		boolean flag = false;
		if(check != null){
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("ggobuk")){
					out.print(cookie.getName()+" : ");
					out.print(cookie.getValue()+"<br>");
					flag = true;
				}
			}
		}
		if(!flag){
			out.print("꼬북칩은 이미 먹었어요~");
		}
	%>
</body>
</html>