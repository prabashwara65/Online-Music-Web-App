<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style type="text/css">
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
		}
	</style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String songname = request.getParameter("songname");
		String artisname = request.getParameter("artisname");
		String reason = request.getParameter("reason");

	%>
	
	
	
	
	<form action="UpdateReportServlet" method="post">
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>User Name</td>
			<td><input type="text" name="username" value="<%= username %>"></td>
		</tr>
		<tr>
		<td>Song Name</td>
		<td><input type="text" name="songname" value="<%= songname %>"></td>
	</tr>
	<tr>
		<td>Artis Name</td>
		<td><input type="text" name="artisname" value="<%= artisname %>"></td>
	</tr>
	<tr>
		<td>Reason</td>
		<td><textarea cols="50" rows="4" value ="<%= reason %>" name="reason">Reason</textarea></td>
	</tr>
			
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>

</body>
</html>