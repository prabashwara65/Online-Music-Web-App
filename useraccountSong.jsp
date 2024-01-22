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
  background-image: url('img/background_acc.webp');
  background-size: cover;
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

.container {
  width: 80%;
  margin: 0 auto;
  background-color: #fff;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 20px;
  border-radius: 10px;
}

table {
  width: 100%;
  border-collapse: collapse;
  margin: 20px 0;
  border: 1px solid #ccc;
}

table th, table td {
  padding: 10px;
  text-align: left;
  color : #eeebf0;
}

table th {
  background-color: #007BFF;
  color: #fff;
}

/* Style the buttons */
input[type="button"] {


  background-color: #007BFF;
  font-size: 15px;
  color: #eeebf0;
  border: none;
  border-radius: 5px;
  padding: 40px 80px;
  margin: 10px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

input[type="button"]:hover {
  background-color: #0056b3;
}

/* Style the form */
form {
  text-align: center;
}

label {
  font-weight: bold;
}

input[type="text"] {
  width: 100%;
  padding: 10px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
}

/* Center the form heading */
h1 {
  text-align: center;
  font-size: 32px;
  margin-bottom: 20px;
  color: #eeebf0;
}

textarea {
  width: 100%;
  padding: 10px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
  resize: vertical;
}

</style>
</head>
<body>

	<h1>Song Records</h1>
				
					

<table>

	<c:forEach var="cus" items="${songDetails}">
	
	<c:set var="songid" value="${cus.songid}"/>
	<c:set var="songtitle" value="${cus.songtitle}"/>
	<c:set var="artist" value="${cus.artist}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="username" value="${cus.username}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
		<td>Song ID</td>
		<td>${cus.songid}</td>
	</tr>
	<tr>
		<td> SongTitle</td>
		<td>${cus.songtitle}</td>
	</tr>
	<tr>
		<td> Artist</td>
		<td>${cus.artist}</td>
	</tr>
	<tr>
		<td> Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td> User Name</td>
		<td>${cus.username}</td>
	</tr>
	
	<tr>
		<td> Password</td>
		<td>${cus.password}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updatesong.jsp" var="songupdate">
	
		<c:param name="songid" value="${songid}"/>
		<c:param name="songtitle" value="${songtitle}"/>
		<c:param name="artist" value="${artist}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="username" value="${username}"/> 
		<c:param name="password" value="${password}"/>
		
	</c:url>
	
	
	<center>
	
	<a href="${songupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	</center>
	
	<br>
	<c:url value="deletesong.jsp" var="songdelete">
	
		<c:param name="songid" value="${songid}"/>
		<c:param name="songtitle" value="${songtitle}"/>
		<c:param name="artist" value="${artist}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="username" value="${username}"/> 
		<c:param name="password" value="${password}"/>
		
	</c:url>
	
	<center>
	<a href="${songdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	</center>
 	
 	
</body>
</html>