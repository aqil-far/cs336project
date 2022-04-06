<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Clothing Store: Emad Aditya Aqil Karthik</title>
	</head>
	
	<body>

		<h3>Welcome to our clothing store!</h3> 
		<h4>Please log-in below with your credentials</h4>
		<strong>If you don't have a log-in at this time please let us know</strong>
		
		<br>
		<br>
		
		<% out.println("We hope you enjoy your experience!"); %> <!-- JSP usage of HTML -->
		
		<br>
	
	<h4>Login</h4>
	
	<br>
		<form method="post" action="query.jsp">
		<table>
		<tr>    
		<td>Username</td><td><input type="text" name="username"></td>
		</tr>
		<tr>
		<td>Password</td><td><input type="text" name="password"></td>
		</tr>

		</table>
		
		
			<br>
	<h4> This is the button we have to make work</h4>
		
		<input type="submit" value="Next" >
		
		<br>
	
	<h4> This is what it will look like when it works</h4>
	
		
		<a href="welcomepage.jsp">Next</a>
		
			<br>
	<br>
</form>
</body>
</html>