<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include_test</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<h4>-=-=-=-=-=현재 페이지=-=-=-=-=-</h4>
	<%!
		int pageCnt = 0;
		void addCnt(){
			pageCnt++;
		}
	%>
	<%addCnt(); %>
	<p>이 사이트의 방문은 <%=pageCnt %>번째 입니다.
	
	<%@ include file = "footer.jsp" %>
</body>
</html>