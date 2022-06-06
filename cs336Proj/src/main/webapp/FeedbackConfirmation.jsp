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

		<h3>Thank you for the feedback</h3> 
		<strong>Press the back button to exit to previous page</strong>
		
		<input type="submit" onclick="location.href='query.jsp'" value="Back" >
		

</body>
</html>
<% //Get the database connection
ApplicationDB db = new ApplicationDB();	
Connection con = db.getConnection();	

//Create a SQL statement
Statement stmt = con.createStatement();

//Get the username and password
String Feedback = request.getParameter("feedback");

PreparedStatement ps = con.prepareStatement("INSERT INTO Feedback(Question) VALUES(?)");
ps.setString(1, Feedback);
int x = ps.executeUpdate();

%>