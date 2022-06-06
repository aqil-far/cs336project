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
<h2>View all of the questions and feedback submitted</h2>

<table border="1">
	<tr>
	<td>Questions</td>
	</tr>
	<h3></h3>
	<input type="submit" onclick="location.href='queryCusRep.jsp'" value="Exit" >
	<%
			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();	
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			
			//Get the username and password
			
			
			//query against the DB
			PreparedStatement ps = con.prepareStatement("SELECT * FROM Feedback");
			
			
			//Run the query against the database.
			ResultSet result = ps.executeQuery();%>
			<%while(result.next()){%>
				<tr>
<td><%=result.getString("Question") %></td>
			
		<%	} %>
	
</table>
	
</body>
</html>