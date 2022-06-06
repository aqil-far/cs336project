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
<h2>Buy</h2>
<h3>The following items are below</h3>
<strong>Items are bid only</strong>
<table border="1">
	<tr>
	<td>Username</td>
	<td>Item Number</td>
	<td>Minimum Bid</td>
	<td>Current Bid</td>
	<td>Final Amount</td>
	<td>Time Stamp</td>
	
	</tr>
	<h3></h3>
	<input type="submit" onclick="location.href='query.jsp'" value="Exit" >
	

	<%
			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();	
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			
			//Get the username and password
			
			
			//query against the DB
			PreparedStatement ps = con.prepareStatement("SELECT * FROM Transcations WHERE username=?");
			ps.setString(1, "Mark_S22");
			
		
			//Run the query against the database.
			ResultSet result = ps.executeQuery();%>
			<%while(result.next()){%>
				<tr>
<td><%=result.getString("Username") %></td>
<td><%=result.getString("itemNum") %></td>
<td><%=result.getString("minBid") %></td>
<td><%=result.getString("currentBid") %></td>
<td><%=result.getString("finalAmount") %></td>
<td><%=result.getString("timeStamp") %></td>


</tr>
			
	
			
		<%	} %>
	
	

	

	

	
</table>
</body>
</html>