<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


    

    form {
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        max-width: 400px; /* Adjust the width as needed */
        width: 80%; /* Add a maximum width and set the width to a percentage */
        margin: 0 auto;
    }

    form input[type="text"],
    form input[type="password"] {
        width: 93%; /* Make the input fields span the entire width of the form */
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    form input[type="submit"] {
        background-color: #333;
        border: none;
        border-radius: 3px;
        color: #fff;
        cursor: pointer;
        padding: 10px 20px;
        display: block;
        margin: 0 auto;
    }

    form input[type="submit"]:hover {
        background-color: #555;
    }

    form label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }
    
    
  

        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color:deep red;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 15px 0;
            text-align: center;
        }

        nav {
            display: flex;
            justify-content: center;
            background-color:#444;
            padding: 10px 0;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #555;
        }
        
</style>
</head>
<body>


<nav>
	
        <a href="Home_Index.jsp">Home</a>
        <a href="customerInsert.jsp">Sign Up</a>
         <a href="songinsert.jsp">Add Song</a>
        <a href="index.jsp">Feedback</a>
        <a href="reportInsert.jsp">Report</a>
       
        
        
    </nav> <br> <br>
    
    <form action="SongInsert" method="post">
        <label for="songtitle">Song Title:</label>
        <input type="text" name="songtitle" placeholder="Enter the song title">
        <br>
        <label for="artist">Artist:</label>
        <input type="text" name "artist" placeholder="Enter the artist's name">
        <br>
        <label for="email">Email:</label>
        <input type="text" name="email" placeholder="Enter your email">
        <br>
        <label for="uid">User Name:</label>
        <input type="text" name="uid" placeholder="Enter your username">
        <br>
        <label for="psw">Password:</label>
        <input type="password" name="psw" placeholder="Enter your password">
        <br>
        <input type="submit" name="submit" value="ADD SONG">
    </form>
</body>
</html>
