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
			try{
				 PreparedStatement ps = con.prepareStatement("INSERT INTO account(Username, Password, Email) VALUES(?, ?, ?)");
					ps.setString(1,Username);
					ps.setString(2,Password);
					ps.setString(3, Email);
					int x = ps.executeUpdate(); %>
			<%	if(x == 1){%>
					
					<script>
  					location.href = "query.jsp";
					</script>
		<%		}
			} catch(Exception e)
	        {
		        System.out.print(e);
		        e.printStackTrace();
		        }
			
			
			//Run the query against the database.
			
	%>
			
	

	

</body>
</html>