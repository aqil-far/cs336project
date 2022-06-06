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
			String Username = request.getSession().getAttribute("customer")+"";
			String CurrentBid = request.getParameter("bid");
			String minimumBid = request.getSession().getAttribute("minimumBid")+"";
			String itemNumber = request.getSession().getAttribute("itemNumber")+"";
			String date = new java.util.Date().toLocaleString();
			
			 PreparedStatement ps = con.prepareStatement("INSERT INTO Transcations(Username, itemNum, minBid, currentBid, finalAmount, timeStamp) VALUES(?, ?, ?, ?, ?, ?)");
				ps.setString(1,Username);
				ps.setString(2,itemNumber);
				ps.setString(3, minimumBid);
				ps.setString(4, CurrentBid);
				ps.setString(5, CurrentBid);
				ps.setString(6, date);
				int x = ps.executeUpdate();
				if(x == 1){
					out.println("Bid Successful!");%>
					<br>

			
			<input type="submit" onclick="location.href='query.jsp'" value="Return" >
			
			<br>
					
			<%	}
							 
				%>
				

			
			
			
		
	
			

			
	

	

</body>
</html>