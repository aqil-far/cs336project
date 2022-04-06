<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

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
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			//query against the DB
			
			String upass = "SELECT * FROM users WHERE username = root AND password = test ";
			
			//Run the query against the database.
			ResultSet result = stmt.executeQuery(upass);

			if (!result.isBeforeFirst() ) {    
			    System.out.println("No data"); 
			} else { 
				System.out.println("log-in success");
			}

			
			String site = "Welcome! Thank you for logging in";
			out.print(site);
	%>

</body>
</html>