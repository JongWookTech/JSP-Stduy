<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그</title>
</head>
<body>
	<h2>선언문</h2>
	<!-- 하나의 구역이 Class가 된다. -->
	<%!
	//선언문 태그를 이용하여 Java변수와 메소드를 정의한다.
	
	// 전역변수
	int a = 3;
	//메소드
	String changeToLowerCase(String msg){
		return msg.toLowerCase();
	}
	%>
	
	<!-- 표현문은 out.print()에 매개변수로 
	전달되므로 세밀콜론이 붙으면 오류가 난다. -->
	<%=
	102+102
	%>
	<br>
	<%=changeToLowerCase("Hello DOCODE") %><br>
	
	
	<%
		for(int i=0; i<a; i++){
	%>
		<!-- 현재 여기는 for문 안이다. -->
		<%=i+1 + "번 : 안녕하세요?" %><br>
	<%		
		}
	%><br>
	<%
		for(int i=0; i<a; i++){	
			out.print(i+1+"번 : 안녕하세요?<br>");
		}
	%>
</body>
</html>
