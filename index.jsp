<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Form design</title>


</head>
<script>

    function submitFeedback() {
        var form = document.getElementById("feedbackForm");
        var email = form.email.value;

       
        $.post("insert", {name: form.name.value, email: email, message: form.message.value}, function(response) {
            if (response === "success") {
                alert("Feedback submitted successfully!");
               
            } else if (response === "error") {
                alert("Error submitting feedback. Please try again.");
            } else if (response === "emailUsed") {
                alert("Sorry.Email is used.");
            }
        });
    }
</script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

              
      <style>
      
      
      
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
        body {
            background-image: url('img/feedback.jpg');
            background-size: cover;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            width: 100%;
            height: 100%;
            display: block;
            justify-content: right;
            align-items: right;
        }

       form {
       
            background-color: gray;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            max-width: 1000px;
            height : 500px;
            margin: 0px auto;
            margin-top: 100px;
            margin-right: 100px;
             right: 0;
         
   
        }

        h1 {
            text-align: center;
            color: white;
        }

        input[type="text"], textarea {
            width: 90%;
            padding: 20px;
            margin-bottom: 10px;
            margin: 20px;
            
            padding-right: -30px;
           /* box-sizing: border-box;*/
            border: none;
            background-color: white; /* White background color */
            border-radius: 5px;
        }

        button {
        
            background-color: black;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            align-content: center;
        }

        button:hover {
            background-color:black;
        }
    </style>       
        
   <body>
   
   <nav>
	
        <a href="Home_Index.jsp">Home</a>
        <a href="customerInsert.jsp">Sign Up</a>
         <a href="songinsert.jsp">Add Song</a>
        <a href="index.jsp">Feedback</a>
        <a href="reportInsert.jsp">Report</a>
       
        
        
    </nav>

<div class = "container"></div>
<form action ="feedbackservlet" method="post">
<h1> Give your Feedback</h1>
<div class="id">
<input type ="text" placeholder ="Full name" name="name"> <h>
<i class ="far  fa -user"></i></h>
</div>
<div>
<h>
<input type ="text"  name="email" placeholder ="Email address">
<i class ="far fa-envelope"></i></h></div>
 <b></b>
<textarea cols="15" rows="5" placeholder="Enter your opinions here..." name="message"></textarea>

<center><button>SUBMIT</button></center>
<a href="NewFile.jsp"> View Feedback History</a>
<h3>[Only one mail for one feedback]</h3>



</form>

       
</body>
</html>