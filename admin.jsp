<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ServerStarter</title>
		<%@ page import="java.util.ArrayList" %>
		<%@ page import="backend.Chatrooms"%>
</head>
<body>
		<% Chatrooms c = new Chatrooms();%>
		<% System.out.println( "Chatrooms object created" );%>
		<% application.setAttribute("ref1", c);%>
</body>
</html>