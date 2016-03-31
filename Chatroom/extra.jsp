<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ page import="java.util.ArrayList" %>
<%@ page import="backend.Chatrooms"%>
<%String newmessage = request.getParameter("data");
String nickname = request.getParameter("nick");
String roomname = request.getParameter("roomnaam");
int j = Integer.parseInt(request.getParameter("je"));
Chatrooms refobject = (Chatrooms)application.getAttribute("ref1");
refobject.openlist.get(j).messages.add(nickname + ":" + newmessage);%>
</head>
<body>
<script>
redirect = "<%="yourroom.jsp?nicknaam="+nickname+"&roomnaam="+roomname%>";
window.location.href=redirect;
</script>
</body>
</html>