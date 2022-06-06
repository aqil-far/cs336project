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
			PreparedStatement ps = con.prepareStatement("SELECT * FROM CusRepaccount WHERE Username = ? AND Password = ?");
			ps.setString(1,Username);
			ps.setString(2,Password);
			
			//Run the query against the database.
			ResultSet result = ps.executeQuery();%>
			<%if(result.next() || (Username == null && Password == null)){
				String site = "Welcome! Thank you for logging in";
				out.print(site);%>
				<input type="submit" onclick="location.href='HelloWorld.jsp'" value="Log-out" >
					<h3>View Questions From Users</h3>
	<input type="submit" onclick="location.href='viewQuestions.jsp'" value="View" >
	<h3>View Auctions</h3>
	<input type="submit" onclick="location.href='viewAuctionsRep.jsp'" value="View" >
	<h3>Modify User Accounts</h3>
	<input type="submit" onclick="location.href='modifyUser.jsp'" value="Modify" >
						
		<%	}
			else{
				String site = "Incorrect Username or Password. Please try again";
				out.print(site);
			}
	

	%>
	

</body>

</html>