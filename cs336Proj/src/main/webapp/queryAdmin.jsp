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
			String Username = request.getParameter("username");
			String Password = request.getParameter("password");
			
			//query against the DB
			PreparedStatement ps = con.prepareStatement("SELECT * FROM Adminaccount WHERE Username = ? AND Password = ?");
			ps.setString(1,Username);
			ps.setString(2,Password);
			
			//Run the query against the database.
			ResultSet result = ps.executeQuery();%>
			<%if(result.next()){
				String site = "Welcome! Thank you for logging in, Admin!";
				out.print(site);%>
				<input type="submit" onclick="location.href='HelloWorld.jsp'" value="Log-out" >
				<h3>Generate Sales Report</h3>
	<input type="submit" onclick="location.href='generateSalesReport.jsp'" value="Generate" >
	<h3>Create Account for Customer Representative</h3>
	<input type="submit" onclick="location.href='RegisterCusRep.jsp'" value="Create Account" >
						
						
		<%	}
			else{
				String site = "Incorrect Username or Password. Please try again";
				out.print(site);
			}

	%>


</body>
</html>