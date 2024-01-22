<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
        
        
        	/* Style the form container */
form {
  width: 300px;
  margin: 0 auto;
  padding: 20px;
  background-color: #f2f2f2;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Style form elements */
input[type="text"], textarea {
  width: 80%;
  padding: 10px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
}

input[type="submit"] {
  width: 100%;
  padding: 10px;
  background-color: #007BFF;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

/* Style the labels */
label {
  font-weight: bold;
  display: block;
  margin-top: 10px;
  font-size: 14px;
}

/* Style the textarea */
textarea {
  resize: vertical;
}

/* Add some spacing between elements */
br {
  clear: both;
}

/* Style the form heading */
h2 {
  text-align: center;
  font-size: 24px;
  margin-bottom: 20px;
  color: #333;
}

/* Add some hover effect to the submit button */
input[type="submit"]:hover {
  background-color: #0056b3;
}

/* Add styling for the form header and main container */
body {
  background-color: #f0f0f0;
}

/* Center the form on the page */
form {
  margin: 0 auto;
  margin-top: 20px;
}

/* Style the reasons textarea */
textarea {
  width: 80%;
  padding: 10px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
  resize: vertical;
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


	<form action="ReportInsert" method="post">
	
		
		
		User name <input type="text" name="username"><br>
		Song name <input type="text" name="songname"><br>
		Artist Name <input type="text" name="artisname"><br>
		
		 <textarea rows="5" cols="5" name="reason" placeholder="reason"></textarea>
		
		
		<input type="submit" name="submit" value="Create Customer">
	</form>
	
	

</body>
</html>