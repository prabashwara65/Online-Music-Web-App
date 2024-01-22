<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en"><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&amp;display=swap" rel="stylesheet">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
</head>
<body>
      <%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
      <div class="wrapper">
        <div class="payment">
            <h1>User Profile</h1>
            <form action="UpdateCustomerservlet" method="post">
            
            <div class="form" >
            
                <div class="card space icone-relative">
                    <label class="label">User ID:</label>
                    <input type="text" class="input" name="cusid" value="<%= id %>" readonly>
                    <i class="bx bxs-user"></i>
                </div>

                <div class="card space icone-relative">
                    <label class="label">Name:</label>
                    <input type="text" class="input" name="name" value="<%= name%>">
                    <i class="bx bxs-user"></i>
                </div>

                <div class="card space icone-relative">
                    <label class="label">Email:</label>
                    <input type="text" class="input" name="email" value="<%= email %>">
                    <i class="bx bx-credit-card"></i>
                </div>
                <div class="card space icone-relative">
                    <label class="label">Mobile Number:</label>
                        <input type="text" class="input" name="phone" value="<%= phone %>">
                        <i class="bx bxs-lock-alt"></i>
                </div>

                <div class="card-grp space">
                    <div class="card-item icone-relative">
                        <label class="label">User Name:</label>
                        <input type="text" class="input" name="uname" value="<%= userName%>"> 
                        <i class="bx bxs-calendar"></i>
                    </div>
                    <div class="card-item icone-relative">
                       <label class="label">Password:</label>
                    <input type="password" class="input" name="pass" value="<%= password %>">
                    <i class="bx bx-credit-card"></i>
                    </div>

                
                </div>
                <button type="submit" class="send" name="submit" value="Update My Data">Update</button>
               

            </div>
         </form>
        </div>
    </div>
    


</body></html>