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

		
		String songid = request.getParameter("songid");
		String songtitle = request.getParameter("songtitle");
		String artist = request.getParameter("artist");
		String email = request.getParameter("email");
		String username = request.getParameter("username"); //uid
		String password = request.getParameter("password"); //psw
		
	%>
	
	
	
	
	<form action="UpdateSongServlet" method="post">
	<table>
		<tr>
			<td>SONG ID</td>
			<td><input type="text" name="songid" value="<%= songid %>" readonly></td>
		</tr>
		<tr>
			<td>Song Title</td>
			<td><input type="text" name="songtitle" value="<%= songtitle %>"></td>
		</tr>
		<tr>
		<td>Artist</td>
		<td><input type="text" name="artist" value="<%= artist %>"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= username %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update Song Data">
	</form>

</body>
</html>