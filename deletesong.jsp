<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        background: #f0f0f0;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    h1 {
        background: #333;
        color: #fff;
        text-align: center;
        padding: 20px 0;
        margin: 0;
    }

    form {
        background: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
        max-width: 400px;
        margin: 20px auto;
        padding: 20px;
    }

    table {
        width: 100%;
    }

    table tr td {
        padding: 10px;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    input[type="submit"] {
        background: #333;
        border: none;
        border-radius: 3px;
        color: #fff;
        cursor: pointer;
        padding: 10px 20px;
    }

    input[type="submit"]:hover {
        background: #555;
    }

    input[readonly] {
        background: #eee;
        color: #777;
    }

    /* Style for the "Delete My Account" button */
    input[name="submit"] {
        background: #d9534f; /* Red color */
    }

    input[name="submit"]:hover {
        background: #c9302c; /* Darker red on hover */
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
	
	<h1>Account Delete</h1>
	
	<form action="DeleteSongServlet" method="post">
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="songid" value="<%= songid %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= songtitle %>" readonly></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= artist %>"readonly></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= email %>"readonly></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= username %>"readonly></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"readonly></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Account">
	</form>

	
</body>
</html>