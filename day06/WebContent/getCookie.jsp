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
		//Cookie 라는 이름을 가진 무언가가 있는지 체크
		String check = request.getHeader("Cookie");
	
		//무언가가 있다면
		if(check != null){
			Cookie[] cookies = request.getCookies();
			for(int i=0; i < cookies.length; i++){
				out.print(cookies[i].getName()+" : ");
				out.print(cookies[i].getValue());
				out.print("<br>");
				// 쿠키 수정
				if(cookies[i].getName().equals("docode")){
					cookies[i].setValue("changecode");
					response.addCookie(cookies[i]);
				}
			}
		}
	%>
</body>
</html>