<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="com.cs336.pkg.ApplicationDB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<%
			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();	
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			
			//Get the username and password
			String Username = request.getParameter("username");
			String Password = request.getParameter("password");
			String Email = request.getParameter("email");
			
			
			//query against the DB
			 
			
			
			
			 %>
		<h3>Change User's Information</h3>		
		<form method="post" action="modificationpage_Edit.jsp">
		<table>
		<tr>    
		<td>Username</td><td><input type="text" value=<%=Username%>  name="username2"></td>
		</tr>
		<tr>
		<td>Password</td><td><input type="text" value=<%=Password%>  name="password2"></td>
		</tr>
		<tr>
		<td></td><td><input type="hidden" value=<%=Email%> name="email2"></td>
		</table>
		

			<br>
		
		<input type="submit" value="Edit" >
		
		<br>
	

	<br>
</form>
		<%	
			//Run the query against the database.
			
	%>
			
	

	

</body>
</html>