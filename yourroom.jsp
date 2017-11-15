<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%String roomname = request.getParameter("roomnaam"); %>
<%String nickname = request.getParameter("nicknaam"); %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<%@ page import="java.util.ArrayList" %>
<%@ page import="backend.Chatrooms"%>
<%System.out.println(nickname); %>
<%Chatrooms refobject = (Chatrooms)application.getAttribute("ref1");%>
<title><%=roomname%></title>
<script>
	<%
	int j,num_chatrooms=refobject.openlist.size();
	for(j=0;j<num_chatrooms;j++){
	if(refobject.openlist.get(j).nameofroom.equals(roomname))
		break;
	}%>
</script>
<%System.out.println(j + ":" + nickname + roomname);%> 
<%refobject.openlist.get(j).users.add(nickname); %>
</head>
<body>
<div style="float:left;width:80%;height:400px;overflow:scroll-y;padding:0px;">
<div id = "myForm">
	<form id="myForm1" action="extra.jsp">
	<input type="text" name="data">
	<input id="nickk" type="hidden" name="nick" value=<%=nickname%>>
	<input id="roomm" type="hidden" name="roomnaam" value=<%=roomname%>>
	<input id="jj" type="hidden" name="je" value=<%=j%>>
    <input type="submit" id="datasend" value="Send">
	</form>
</div>
	<div id="conversation">

	</div>
</div>
<script type="text/javascript">
	setInterval(function()
	{	var div = document.getElementById('conversation');
		var t,p;
	<% int i,size=(refobject).openlist.get(j).messages.size();
	   for(i=size-1;i>=0;i--){%>
       p = document.createElement("P");                  
       t = document.createTextNode(<%=refobject.openlist.get(j).messages.get(i)%>); 
       p.appendChild(t);                                          // Append the text to <p>
       div.appendChild(p);   
	<%;}%>
        p = document.createElement("P");                       // Create a <p> element
        t = document.createTextNode("This is a paragraph");       // Create a text node
        p.appendChild(t);                                          // Append the text to <p>
        div.appendChild(p);         
 
	}, 100);
</script>	
</body>
</html>
