<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Here</title>
</head>
<body>
<h3> Create User Account</h3>
	<br>
		<form method="post" action="queryRegister.jsp">
		<table>
		<tr>    
		<td>Username</td><td><input type="text" name="username"></td>
		</tr>
		<tr>
		<td>Password</td><td><input type="text" name="password"></td>
		</tr>
		<tr>
		<td>Email</td><td><input type="text" name="email"></td>
		</tr>

		</table>
		

			<br>

		
		<input type="submit" onclick="location.href='queryRegister.jsp'" value="Register" >
		
		<br>
	</form>

	<br>
</body>
</html>