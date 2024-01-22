<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link  rel="stylesheet" href="css/index.css" > 
</head>
<body>


<div class = container> 
	
	<div class="navbar" >
	<img alt="logo" src="img/logo.png" class="logo">
	
	
	
	<ul> 
	
		<li> <a href="Home_index.jsp" > Home </a> <li>
		<li> <a href="customerInsert.jsp" > Sign up </a>  <li>
		<li> <a href="songinsert.jsp" > Add New Song </a>  <li>
		<li> <a href="index.jsp" > Feedback </a>  <li>
		<li> <a href="reportInsert.jsp" > Report </a> </li>
		
	
	</ul>
	
	</div>
	<div class="content">
		<div class="left-content"></div>
		<div class="music-player">
			<h1 class="song-name">Song one</h1>
			<p class="artist-name">Artist</p>
			
			<div class="disk play" ></div>
			<div class ="song-slider">
			
				<input type="range" value=0 class="seek-bar">
				<span class="current-time" >00:00</span>
				<span class="song-duration" >00:00</span>
			
			</div>
			
			<div class="controls" >
				<button class="btn backword-button"><img src="img/pre.png"></button>
				<button class ="play-button play" >
					<span></span>
					<span></span>
				
				</button>
				<button class="btn forward-button"><img src="img/nxt.png"></button>
			
			</div>
		
		</div>
		
	
	
	</div>
	

</div>

</body>
</html>