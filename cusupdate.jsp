<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
        body {
            background-color: #ffc0cb; 
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        h1 {
            color:  #ff1493; 
            text-align: center;
        }

        form {
            background-color: white; 
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            max-width: 600px;
            margin: 0 auto;
            margin-top: 50px; 
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: none;
            background-color: #ffffe0; 
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color:blue;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color:blue;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>Update My Message</h1>
<%
    String  id=request.getParameter("id");
    String  name=request.getParameter("name");
    String  email=request.getParameter("email");
	String message=request.getParameter("message");
%>
<form action="Updatefeedbackservlet" method="post">
			
			id <input type="text" name="id" value="<%=id %>"readonly><br><br>
			name <input type="text" name="name"  value="<%=name %>" readonly><br><br>
			email <input type="text" name="email" value="<%=email %>"readonly><br><br>
			message <input type="text" name="message" value="<%= message%>"><br>
			
			<input type="submit" name="submit" value="Update ">
			
			


</form>

</body>
</html>
