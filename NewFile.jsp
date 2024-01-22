<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html lang="en">

<head>
<style>
        body {
        	 background-image: url('img/new.jpg');
            background-size: cover;
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        form {
            margin-top: 20px;
        }

        h1 {
            color: #333;
        }

        input[type="text"] {
            width: 200px;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: none;
            background-color: #fff;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 80%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            border-radius: 10px;
            background-color: #fff;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            color: #333;
        }

        th {
            background-color: #4caf50;
            color: white;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        a {
            text-decoration: none;
        }

        a input[type="button"] {
            background-color: red;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        
        input[type="button"] {
        
        	display:inline-block;
        	
            background-color: red;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        
        

        a input[type="button"]:hover {
            background-color: #45a049;
        }
        
        	.form2 {
        text-align: center;
        margin: 20px;
    }

    input[type="text"] {
        width: 300px;
        padding: 10px;
        margin-bottom: 10px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px; /* Adjusted font size for better visibility */
    }

    .sub {
    
        background-color: red;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px; /* Adjusted font size for consistency */
    }

    .sub:hover {
        background-color: red;
    }
        
    </style>
    
    
    <title>Feedback History</title>
</head>

<body>

<form action="logmail" method="post">
    <h1>Feedback History</h1>



<div class="form2">

<input type ="text"  name="email" placeholder ="Email address">

<br><br>

 <input type ="submit" name="submit" value="login" class="sub">

</div>
 
</form >


 
   <table border="1px">
   
   <h1>My Feedback</h1>
   <c:forEach var="cus" items="${cusdetail}">
   
   <c:set var ="id" value="${cus.id }"/>
   <c:set var ="name" value="${cus.name}"/>
   <c:set var ="email" value="${cus.email}"/>
  <c:set var ="message" value="${cus.message }"/>
<tr>
	<td>Customer Id</td>

    <td>${cus.id}</td>
    </tr><br>
    
    <tr>
	<td>Customer name</td>

    <td>${cus.name}</td>
    </tr><br>
    <tr>
	<td>Customer email</td>

    <td>${cus.email}</td>
    </tr><br>

<tr>
	<td>Customer message</td>

    <td>${cus.message }</td>
    </tr>
    
 

</table> 
<c:url value="cusupdate.jsp" var ="update">
<c:param name="id" value ="${id}"/>
<c:param name="name" value="${name}"/>
<c:param  name="email" value="${email}"/>
<c:param name="message" value ="${message}"/>

</c:url>

<a href="${update}">

<input type="button" name="update" value="Update My Feedback">
</a>
<br> <br>

<input type="button" name="delete" value="Delete My Feedback" onclick="confirmDelete('${id}')">
            
        
    </c:forEach>



<script>
    function confirmDelete(id) {
        var result = confirm("Are you sure you want to delete?");
        if (result) {
           
            window.location.href = "deletefeedbackservlet?id=" + id;
        }
    }
</script>
</body>

</html>
