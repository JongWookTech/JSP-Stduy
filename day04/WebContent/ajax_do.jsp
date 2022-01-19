<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>
	<%
		int data1= Integer.parseInt(request.getParameter("data1"));
		int data2= Integer.parseInt(request.getParameter("data2"));
		out.print(data1+data2);
	%>
</body>