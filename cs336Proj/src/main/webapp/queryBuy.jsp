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
	<td>ItemNumber</td>
	<td>ItemName</td>
	<td>Size</td>
	<td>Color</td>
	<td>Min Bid</td>
	<td>Timer</td>
	<td>Auction</td>
	
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
			/* String Username = request.getSession().getAttribute("customer")+"";
			 */
		
			
			
			
			//query against the DB
			/* PreparedStatement ps = con.prepareStatement("SELECT * FROM Inventory");
			
			
			//Run the query against the database.
			ResultSet result = ps.executeQuery();
			String date = new java.util.Date().toLocaleString(); */
			/* while(result.next()){
				String dummy = result.getString("timer")+"";
				
				if(dummy.compareTo(date) <= 0){
					//out.println(dummy);
					
					//out.println("baba");
					PreparedStatement pd = con.prepareStatement("DELETE FROM Inventory WHERE timer=?");
					
					pd.setString(1,dummy);
					pd.executeUpdate();
					
				}
			} */
			PreparedStatement pq = con.prepareStatement("SELECT * FROM Inventory");
			ResultSet result2 = pq.executeQuery();%>
			<%while(result2.next()){%>
				<tr>
<td><%=result2.getString("itemNum") %></td>
<td><%=result2.getString("Itemname") %></td>
<td><%=result2.getString("Size") %></td>
<td><%=result2.getString("Color") %></td>
<td><%=result2.getString("minBid") %></td>
<td><%=result2.getString("timer") %></td>
<td><a href="bidFromBuy.jsp?itemNum=<%=result2.getString("itemNum")%>&minBid=<%=result2.getString("minBid")%>">Bid</a></td>

</tr>
			
		</tr>
			
		<%	}%>
		<%	
		%>
	
	

	
</table>
	

	
</table>
</body>
</html>