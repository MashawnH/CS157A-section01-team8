<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
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
	
	
	
</style>
<head>
<meta charset="ISO-8859-1">
<title>Patient Homepage</title>
</head>
<body>

	<div class="row">
		<div class="column left"></div>
		<div class="column middle">
			<div class="middle-header">
				<div class="logout" style="float:right">
					<div id="logout-btn" style="align:center;">
						<a href="http://localhost:8080/MedProvider/homepage.jsp">Log out</a>
					</div>
				</div>
				
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
			<div class="middle-body">
				<ul class="body-btns">
					<li>
						<a href=#>Make an Appointment</a>
					</li>
					<li>
						<a href=#>View Your Appointments</a>
					</li>
					<li>
						<a href=#>Contact a Physician</a>
					</li>
				</ul>
			</div>
		</div>
		
		
		<div class="column right"></div>
	</div>

</body>
</html>