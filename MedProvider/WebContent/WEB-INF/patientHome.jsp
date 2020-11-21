<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles.css">
<title>Patient Homepage</title>
</head>
<body>

	<div class="row">
		<div class="column left"></div>
		<div class="column middle">
			<div class="middle-header">
				<div class="logout" style="float:right">
					<div id="logout-btn" style="align:center;">
						<a href="http://localhost:8080/MedProvider/loginPage.jsp">Log out</a>
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