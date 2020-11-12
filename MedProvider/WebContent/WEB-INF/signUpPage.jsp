<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>

<style>
.aligncenter {
	text-align: center;
}

.sortOptions>label {
	font-size: 30px;
}

.sortOptions>input[type=radio] {
	width: 30px;
	height: 30px;
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

/* Full-width inputs */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
</style>

<head>
<title>MedProvider</title>
</head>
<body>

	<h1 style="text-align: center">Welcome to MedProvider - Providing
		you with all your health related needs</h1>

	<div style="text-align: center;">
		<img src="images/logo.png" alt="Logo">
	</div>

	<h1 style="text-align: left">Please choose your type of user:</h1>


	<div style="text-align: left;">
		<form action="/action_page.php">
			<span class="sortOptions"> <input type="radio" id="patients"
				name="radAnswer" value="patients"> <label for="patients">Patient</label><br>
				<input type="radio" id="physician" name="radAnswer"
				value="physician"> <label for="physician">Physician</label><br>
				<input type="radio" id="administrator" name="radAnswer"
				value="administrator"> <label for="administrator">Administrator</label>
			</span>
		</form>
	</div>




	
				<form id="signUp-form" action="signUpValidation.jsp" method="post">
					<div class="login-body">
						<label for="username"><b>User Name</b></label> <input type="text"
							placeholder="Enter User Name" name="username" required> 						
						<label for="email"><b>Email</b></label> <input type="text"
							placeholder="Enter Email" name="email" required> 
						<label for="psw"><b>Password</b></label> <input type="password"
							placeholder="Enter Password" name="psw" required>
						<button id="signup" type="submit">Sign Up</button>
					</div>
				</form>

				<form action="signUpValidation.jsp" method="post">
					<button class="signup" type="submit">Create Account</button>
				</form>






	<%-- Sample code to retrieve all information from users table 
	<%
	try {
		java.sql.Connection con;
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medprovider", "root", "toor");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from users");
		while (rs.next())
			out.println("<br>" + rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3));
		con.close();
	} catch (SQLException e) {
		out.println("SQLException caught: " + e.getMessage());
	}
	%>
	--%>
</body>
</html>
