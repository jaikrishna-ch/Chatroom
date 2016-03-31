<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%String roomname = request.getParameter("roomnaam"); %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<%@ page import="backend.Chatrooms"%>
<%Chatrooms refobject = (Chatrooms)application.getAttribute("ref1");%>
<script>
	<%
	int j,num_chatrooms=refobject.openlist.size();
	for(j=0;j<num_chatrooms;j++){
	if(refobject.openlist.get(j).nameofroom.equals(roomname))
		break;
	}
	if(j==num_chatrooms){j=0;
		%>var error_message = "ChatRoom Does Not Exist"; 
		var redirect = "errorpage.jsp?message="+error_message;
		window.location.href=redirect;
	<%}%>
</script>
</head>
<body>
	<div id="conversation">
	<script>
		<% int k,sizefirst=(refobject).openlist.get(j).messages.size();
		   for(k=sizefirst-1;k>=0;k--)
		   {		%>
		   			var p,t,div=document.getElementById("conversation");
		   			p = document.createElement("P");                  
       				t = document.createTextNode("<%=refobject.openlist.get(j).messages.get(k)%>"); 
       				p.appendChild(t);               
       				div.appendChild(p);  
      				<%
      		}%>
     </script>
	</div>
</body>
</html>