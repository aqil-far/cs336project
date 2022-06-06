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
			String Itemname = request.getParameter("itemName");
			String ItemSize = request.getParameter("size");
			String ItemColor = request.getParameter("color");
			String MinimumBid = request.getParameter("mini");
			String Timer = request.getSession().getAttribute("timer")+"";
			int num1 = (int)(Math.random() * 100);
			int num2 = (int)(Math.random() * 100)+100;
			int num3 = (int)(Math.random() * 100)+200;
			int Itemnum;
			String typeofCloth = request.getParameter("inputs");
			if(typeofCloth.equals("shirt")){
			 	Itemnum = num1;
			}
			else if(typeofCloth.equals("pants")){
				Itemnum = num2;
			}
			else {
				Itemnum = num3;
			}
			String itemNum = Integer.toString(Itemnum);
			out.println(itemNum);
			
			//query against the DB
			try{
				 PreparedStatement ps = con.prepareStatement("INSERT INTO Inventory(itemNum, Itemname, Color, Size, minBid, timer) VALUES(?, ?, ?, ?, ?,?)");
					ps.setString(1, itemNum);
				 	ps.setString(2,Itemname);
					ps.setString(3,ItemColor);
					ps.setString(4,ItemSize);
					ps.setString(5, MinimumBid);
					ps.setString(6, Timer);
					
					int x = ps.executeUpdate(); %>
			<%	if(x == 1){%>
					
					<script>
  					location.href = "queryBuy.jsp";
  					
  			

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