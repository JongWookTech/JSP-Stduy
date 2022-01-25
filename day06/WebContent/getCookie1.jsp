<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getCookie1</title>
</head>
<body>
	<%
		//"Cookie"라는 이름의 과자박스가 있는지 체크
		String check = request.getHeader("Cookie");
		if(check != null){
			Cookie[] cookies = request.getCookies();
			for(int i=0;i<cookies.length;i++){
				out.print(cookies[i].getName()+" : ");
				out.print(cookies[i].getValue());
				out.print("<br>");
				if(cookies[i].getName().equals("ggobuk")){
					cookies[i].setValue("delicious");
					//쿠키 수정
					//쿠키는 맵구조를 띄고있기 때문에 기존의 네임에 새로운 값을
					//추가하면 수정이 일어난다.
					response.addCookie(cookies[i]);
				}
			}
		}
	%>
	<a href="getCookie2.jsp">수정된 값 확인하기!</a>
</body>
</html>




