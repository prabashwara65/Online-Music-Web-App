<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" >


<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type ="hidden" id ="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="img/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="LoginServletCustomer.java" class="signup-image-link">Create an
							account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						<form method="post" action="LoginServletCustomer" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i class="fa-solid fa-user"></i></label> <input
									type="text" name="userN" id="username"
									placeholder="User Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="password"><i class="fa-solid fa-lock"></i></label> <input
									type="password" name="Pass" id="password"
									placeholder="Password" required="required"/>
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="submit" id="signin"
									class="form-submit" value="logIn" />
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</section>

	</div>
	

	
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>