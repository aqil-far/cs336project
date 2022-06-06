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
			String Username = request.getParameter("username2");
			String Password = request.getParameter("password2");
			String Email = request.getParameter("email2");
			
			//query against the DB
			PreparedStatement ps = con.prepareStatement("UPDATE account SET Username = ?, Password = ? WHERE Email = ?");
			ps.setString(1,Username);
			ps.setString(2,Password);
			ps.setString(3, Email);
			
			//Run the query against the database.
			int x = ps.executeUpdate();
			if(x ==1) {
			out.println("Account Modified!");%>
				<br>

		
		<input type="submit" onclick="location.href='modifyUser.jsp'" value="Return" >
		
		<br>
				
		<%	}
						 
			%>
			

	

</body>
</html>