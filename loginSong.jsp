<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #4A90E2, #8E44AD);
        margin: 0;
        padding: 0;
        display: flex;
        align-items: center;
        height: 100vh;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.8);
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        max-width: 400px;
        margin: 0 auto;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .container h1 {
        color: #333;
        text-align: left;
        margin-bottom: 20px;
    }

    .container form {
        width: 100%;
    }

    form input[type="text"],
    form input[type="password"] {
        width: 90%;
        padding: 10px;
        margin: 5px 0;
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

    form input[type="text"]::placeholder,
    form input[type="password"]::placeholder {
        color: #777;
    }

    form label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Confirm using your Username and Password</h1>
    <form action="LoginServletSong" method="post">
        <label for="userN">User Name:</label>
        <input type="text" name="userN" placeholder="Enter your username">
        <br>
        <label for="Pass">Password:</label>
        <input type="password" name="Pass" placeholder="Enter your password">
        <br>
        <input type="submit" name="submit" value="Log In">
    </form>
</div>

</body>
</html>
