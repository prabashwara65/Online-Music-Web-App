<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />


<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
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



</style>

</head>
<body>

 <nav>
	
        <a href="Home_Index.jsp">Home</a>
        <a href="customerInsert.jsp">Sign Up</a>
         <a href="songinsert.jsp">Add Song</a>
        <a href="index.jsp">Feedback</a>
        <a href="reportInsert.jsp">Report</a>
       
        
        
    </nav>
<input type ="hidden" id ="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
                

					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="CustomerInsert" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i class="fa-solid fa-user"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="fa-solid fa-envelope"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="fa-solid fa-phone"></i></label>
								<input type="text" name="phone" id="contact"
									placeholder="Contact no" />
							</div>
							
							<div class="form-group">
								<label for="username"><i class="fa-solid fa-user"></i></i></label>
								<input type="text" name="uid" id="username"
									placeholder="User Name" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="fa-solid fa-lock"></i></label> <input
									type="password" name="psw" id="pass" placeholder="Password" />
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="submit" id="signup"
									class="form-submit" value="create customer" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="img/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	
	


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>