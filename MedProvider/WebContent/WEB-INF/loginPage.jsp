<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<style>

	html {
	font-family: 'Source Sans Pro', sans-serif;
	width: 100%;
	}
	
	.column {
		float: left;
		height: 900px;
	}
	
	.left, .right {
		width: 25%;
		background-color: #d3d3d3;
	}
	
	.middle {
	background-color: #bbb;
	width: 50%;
	}
	
	.row:after {
	  content: "";
	  display: table;
	  clear: both;
	}
	.logout a{
		background-color: #cd5c5c;
		border: none;
		border-radius: 8px;
		color: white;
		padding: 15px 32px;
		text-align: center;
		text-decoration: none;
		display: block;
		font-size: 16px;
		font-family: 'Source Sans Pro', sans-serif;
		transition-duration: 0.4s;
	}
	
	.logout a:hover {
		background-color: white;
		color: black;
		border: 2px solid #cd5c5c;
	}
	
	.logo {
		position: relative;
		z-index: 0;
		background: none;
		width: 90%;
		height: 100%;
		margin-left: 40px;
	}
	.logo .container{
		z-index: 0;
		margin-left: auto;
		margin-right: auto;
		text-align: center;
		width: 180px
	}
	
	.logo .container img {
		display: block;
		margin: 0 auto;
	}
	
	.logo .container p {
		font-size: 25px;
		margin: 0 0;
	}
	
	.middle-body {
		width:100%;
		text-align: center;
		margin-top: 30px;
	}
	
	.body-btns {
		margin: 0 auto;
		padding: 0;
		list-style: none;
		display: inline-block;
	}
	
	.body-btns li {
		padding: 0 8px;
		line-height: 30px;
    	display: inline-block;
    	float: left;
	}
	
	.body-btns li a {
		background-color: #cd5c5c;
		border: none;
		border-radius: 8px;
		color: white;
		padding: 15px 32px;
		text-align: center;
		text-decoration: none;
		display: block;
		font-size: 16px;
		font-family: 'Source Sans Pro', sans-serif;
		transition-duration: 0.4s;
	}
	
		.body-btns li a:hover {
		background-color: white;
		color: black;
		border: 2px solid #cd5c5c;
	}
	
	.form-container {
		display: block;
	/* 	text-align: center; */
	}
	
	form {
	  dsiplay: inline-block;
	  margin-left: auto;
	  margin-right: auto;
	  width: 50%;
	}

	/* Full-width inputs */
	input[type=text], input[type=password] {
	  width: 100%;
	  padding: 12px 20px;
	  margin: 8px 0;
	  display: inline-block;
	  border: 1px solid #ccc;
	  box-sizing: border-box;
	}
	
	/* Set a style for all buttons */
	button {
	  background-color: #cd5c5c;
	  color: white;
	  padding: 14px 20px;
	  margin: 8px 0;
	  border: none;
	  cursor: pointer;
	  width: 100%;
	}
	
	/* Add a hover effect for buttons */
	button:hover {
	  opacity: 0.8;
	}
	
	
</style>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

	<div class="row">
		<div class="column left"></div>
		<div class="column middle">
			<div class="form-container">
				<!-- Will probably need to change this to login.js or something for data processing -->
				<form action="patientHome.jsp" method="post">
					<div class="login-header">	
						<div class = "logo">
							<div class="container">
								<img src="images/logo.png" alt="Logo">
								<p>
									<b>
										<i>MedProvider</i>
									</b>
								</p>
							</div>
						</div>
					</div>
					<div class="login-body">
						<label for="email"><b>Email</b></label>
						<input type ="text" placeholder="Enter Email" name="email" required>
						<label for="psw"><b>Password</b></label>
						<input type="password" placeholder="Enter Password" name="psw" required>
						<button class="login" type="submit">Login</button>
					</div>
				</form>
				<form action="homepage.jsp" method="post">
					<button class="signup" type="submit">Create Account</button>
				</form>
			</div>
		</div>
		
		
		<div class="column right"></div>
	</div>
</body>
</html>