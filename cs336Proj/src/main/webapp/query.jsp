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
			PreparedStatement ps = con.prepareStatement("SELECT * FROM account WHERE Username = ? AND Password = ?");
			ps.setString(1,Username);
			ps.setString(2,Password);
			
			//Run the query against the database.
			ResultSet result = ps.executeQuery();%>
			<%if(result.next() || (Username == null && Password == null)){
				String site = "Welcome "+request.getSession().getAttribute("customer")+"! Thank you for logging in";
				out.print(site);%>
				<input type="submit" onclick="location.href='Logout.jsp'" value="Logout" >
				<h3>Click for Buy</h3>
				<input type="submit" onclick="location.href='queryBuy.jsp'" value="Buy" >
				<h3>Click for Sell</h3>
				<input type="submit" onclick="location.href='Sell.jsp'" value="Sell" >
				<h3>Click to view Auctions</h3>
				<input type="submit" onclick="location.href='viewAuctionsUser.jsp'" value="Auctions" >
				<h3>Click to Search Inventory</h3>
				<input type="submit" onclick="location.href='searchBar.jsp'" value="Search" >
				<h3>Enter any feedback you have! Our customer representative will happily help!</h3>
				<form action="FeedbackConfirmation.jsp">
  				<p><label for="feedback">Enter Feedback:</label></p>
  				<textarea id="feedback" name="feedback" rows="4" cols="50">Please let us know how we are doing here.</textarea>
  				<br>
  				<input type="submit" value="Submit">
				</form>
				<form method="post" action="viewAuctionsUser_Middle.jsp">
				<table>
				<tr>    
				<td></td><td><input type="hidden" value=<%=Username%> name="user"></td>
				</tr>

				</table>
				</form>
						
		<%	}
			else{
				String site = "Incorrect Username or Password. Please try again";
				out.print(site);
			}
			
			
	

	%>

	

</body>

</html>