<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page import="backend.Chatrooms"%>
<%String roomname = request.getParameter("fname");%>
<title><%=roomname %></title>
</head>
<body>
	<form id="form2" action="yourroom.jsp">
		NickName: <input type="text" name="nicknaam" id="nicknaam" maxlength="50"><br>
		<input type="hidden" name="roomnaam"  value=<%=roomname%> >
		<input type="submit" value="Enter Room">
	</form>
</body>
</html>