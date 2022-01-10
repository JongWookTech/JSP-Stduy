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
		//input 종류로 보낸 것들은 parameter로 날라오기 때문에 
		//getParameter("보내준 name") 으로 받는다.
		String site = request.getParameter("site");
		String resultURI = null;
		
		switch(site){
		case "naver":
			resultURI = "forward_naver.jsp";
			break;
		case "google":
			resultURI = "forward_google.jsp";
			break;
		case "daum":
			resultURI = "forward_daum.jsp";
			break;	
		}
	%>	
	<jsp:forward page="<%=resultURI %>"/>	
</body>
</html>