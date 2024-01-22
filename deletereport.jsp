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
	String id = request.getParameter("id");
	String username = request.getParameter("username");
	String songname = request.getParameter("songname");
	String artisname = request.getParameter("artisname");
	String reason = request.getParameter("reason");
	%>
	
	<h1>Account Delete</h1>
	
	<form action="DeleteReportServlet" method="post">
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
		<td><textarea cols="50" rows="4" value=" <%= reason %>" name="Reason"> Reason</textarea></td>
	</tr>
			
	</table>
	<br>
	<input type="submit" name="submit" value="Delete Data">
	</form>

	
</body>
</html>