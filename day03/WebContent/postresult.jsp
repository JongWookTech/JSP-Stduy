<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		URL을 확인하세요
	</p>
	<p>
	request.getParamter로 전송된 데이터 확인하기
	</p>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<p>	 
	아이디 : <%= request.getParameter("id") %> 
	</p>
	<p>
	비밀번호 : <%= request.getParameter("pw") %>
	</p>
</body>
</html>