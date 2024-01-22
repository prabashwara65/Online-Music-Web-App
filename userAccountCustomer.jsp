<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        body {
            background-image:url(img/music.jpg);
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
            text-align: center;
            background-size: cover;
        }

        h1 {
            color: #333;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 50%;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e0e0e0;
        }

        input[type="button"] {
            display: block;
            margin: 10px auto;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #333;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>


<h1>User Profile</h1>
<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.username}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Customer Phone</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.username}</td>
	</tr>
	
	<tr>
		<td>Customer password</td>
		<td>${cus.password}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
 	
 	
</body>
</html>