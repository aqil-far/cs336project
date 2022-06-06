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
	<form action = "" method = "get">
		<input type = "text" name = "q" placeholder = "search auctions...">
	</form>
	
	<table>
	<tbody>
	
		<%
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();
		Statement stat = null;
		ResultSet res = null;
		stat = con.createStatement();
		String query = request.getParameter("q");
		String data;
		if ( query != null){
			data = "SELECT * FROM Inventory WHERE ItemName LIKE '%"+query+"%' OR itemNum LIKE '%"+query+"%' OR Color LIKE '%"+query+"%' OR Size LIKE '%"+query+"%' ";
		} else {
			data = "SELECT * FROM Inventory ORDER BY itemNum DESC";
		}
		res = stat.executeQuery(data);
		while (res.next()){
			%>
			<tr> 
			<td><%=res.getString("itemNum")%> </td>
			<td><%=res.getString("ItemName")%></td>
			<td><%=res.getString("Color")%></td>
			<td><%=res.getString("Size")%></td>
			</tr>
			
			<% 
		}
		
		%>
	
	</tbody>
	
	</table>
	
			

	

</body>
</html>

