<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Chatroom</title>
		<%@ page import="java.util.ArrayList" %>
		<%@ page import="backend.Chatrooms"%>
		<%Chatrooms refobject = (Chatrooms)application.getAttribute("ref1");%>
<script>
	function validateForm() 
	{
	 //this.square = (function(validateForm()) {}(this));
		var x = document.forms["form1"]["fname"].value;
		if (x == "") 
		{
			alert("Name must be filled out");
		    return false;
		}
		else 
		{
		   	return true;
		}
	}
</script>
</head>
	<body>
	
	<h1>Available Chatrooms</h1>

	<%
	int i,loop;
	i=refobject.openlist.size();
	{
		
		for(loop=0;loop<i;loop++){
			%><p><%=refobject.getname(loop)%></p><%;}
	}
	%>
	<h3><%=i%> Chatrooms are Available</h3>
	
	<h1>Create Chatroom</h1>

	<form id="form1" action="enteryourroom.jsp" onclick="return validateForm()">
		Name: <input type="text" name="fname" maxlength="50"><br>
		<input type="submit" value="Create Room">
	</form>



</body>
</html>