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
		String data1 = "DOCODE!";
		//PageContext 객체 추가
		pageContext.setAttribute("data1", data1);
		
		//request 객체 추가
		request.setAttribute("RequestData", "I'm Request");
		
		//Cookie 추가
		Cookie cookie = new Cookie("CookieData", "cookiedata");
		response.addCookie(cookie);
		
		//session 객체 추가
		session.setAttribute("SessionData", "I'm Session");
		
		//application 객체 추가
		application.setAttribute("ApplicationData", "I'm Applcation");
	%>
	pageContext :${data1 }<br>
	<hr>
	request 1 : ${RequestData }<br>
	request 2 : ${requestScope.RequestData }<br>
	<hr>
	Cookie : ${cookie.CookieData.value }<br>
	<hr>
	session 1 : ${SessionData }<br>
	session 2 : ${sessionScope.SessionData }<br>
	<hr>
	application 1 : ${ApplicationData }<br>
	application 2 : ${applicationScope.ApplicationData }<br>
	<hr>
	파라미터 1 : ${param.P_data1 }<br>
	<hr>
	파라미터 배열 : ${paramValues.P_index[0] }<br> 
	파라미터 배열 : ${paramValues.P_index[1] }<br>
	<hr>
	연산자 : ${10+5 }<br>
	조건 연산자 : ${10>3 }<br>
</body>
</html>