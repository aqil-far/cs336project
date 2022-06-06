<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*,java.sql.Date"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sell</title>
</head>

<body>
<h3> Enter your item information</h3>
	<br>
		<form method="post" action="querySell.jsp">
		<table>
		<tr>    
		<td>Item Name</td><td><input type="text" name="itemName"></td>
		</tr>
		<tr>
		<td>Item Size</td><td><input type="text" name="size"></td>
		</tr>
		<tr>
		<td>Item Color</td><td><input type="text" name="color"></td>
		</tr>
		<td>Minimum Bid</td><td><input type="text" name="mini"></td>
		</tr>
		<td><label for="inputs">Select item type:</label>

<select name="inputs" id="types">
  <option value="shirt">Shirt</option>
  <option value="shoe">Shoe</option>
  <option value="pants">Pant</option>
</select></td>
		</tr>

		</table>
		

			<br>
		
		
		<input type="submit" onclick="location.href='querySell.jsp'" value="Post" >
		
		<%
			 Calendar date = Calendar.getInstance();
			long timeInSecs = date.getTimeInMillis();
			Date afterAdding10Mins = new Date(timeInSecs + (2 * 60 * 1000));
			session.setAttribute("timer", afterAdding10Mins.toLocaleString());
		
				
			
			
		%>
		
		<br>
	</form>

	<br>
</body>
</html>