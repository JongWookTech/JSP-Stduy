<%@page import="com.docode.dto.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserDAO udao = new UserDAO();
	String userid = request.getParameter("userid");
	if(udao.checkId(userid)){
		out.print("O");
	}else{
		out.print("X");
	}
%>







