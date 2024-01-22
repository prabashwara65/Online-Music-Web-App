<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>HI</h1>

<table>

	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="username" value="${cus.username}"/>
	<c:set var="songname" value="${cus.songname}"/>
	<c:set var="artisname" value="${cus.artisname}"/>
	<c:set var="reason" value="${cus.reason}"/>

	
	<tr>
		<td>Reason ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td> Username </td>
		<td>${cus.username}</td>
	</tr>
	<tr>
		<td>Report Song name</td>
		<td>${cus.songname}</td>
	</tr>
	<tr>
		<td>Artist name</td>
		<td>${cus.artisname}</td>
	</tr>
	<tr>
		<td>Report Reason</td>
		<td>${cus.reason}</td>
	</tr>
	
	

	</c:forEach>
	</table>
	
	<c:url value="updatereport.jsp" var="cusupdate">
	
		<c:param name="id" value="${id}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="songname" value="${songname}"/>
		<c:param name="artisname" value="${artisname}"/>
		<c:param name="reason" value="${reason}"/>

	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br>
	<c:url value="deletereport.jsp" var="cusdelete">
	
	
		<c:param name="id" value="${id}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="songname" value="${songname}"/>
		<c:param name="artisname" value="${artisname}"/>
		<c:param name="reason" value="${reason}"/>

	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
 	
 	
</body>
</html>