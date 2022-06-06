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
			String Itemnum = request.getParameter("itemNum");
			String minBid = request.getParameter("minBid");
			session.setAttribute("itemNumber", Itemnum);
			session.setAttribute("minimumBid", minBid);
			
			
			
			//Get the username and password
			
			
			//query against the DB
			//PreparedStatement ps = con.prepareStatement("SELECT * FROM Inventory WHERE itemNum = ?");
			
			
			//Run the query against the database.
			
	
//if ( document.getElementById("bidId").value < <%=minBid%>
	

<h2>Place bid for Item Number: <%=Itemnum%></h2>
<h3>Your minimum Bid must be at least <%=minBid%></h3>
<form method="post" action="viewAuctionsUser_Middle.jsp">
<input type="text" name="bid"/>
<br>
<input type="submit" onclick="location.href='viewAuctionUser_Middle.jsp'" value="Bid" >
<br>
</form>




	

	

</body>
</html>