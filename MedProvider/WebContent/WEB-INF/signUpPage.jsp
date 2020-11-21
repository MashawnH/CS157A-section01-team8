<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>

<head>
<link rel="stylesheet" href="styles.css">
<title>MedProvider</title>
</head>
<body>

	<h1 style="text-align: center">Welcome to MedProvider - Providing
		you with all your health related needs</h1>

	<div style="text-align: center;">
		<img src="images/logo.png" alt="Logo">
	</div>

	<h1 style="text-align: left">Please choose your type of user:</h1>




	<form id="signUp-form" action="signUpValidation.jsp" method="post">


		<div class="login-body">
			<div style="text-align: left;">
				<span class="sortOptions"> 
				<input type="radio" id="patient" name="radAnswer" value="patient"><label> Patient </label> <br>
				<input type="radio" id="physician" name="radAnswer" value="physician"> <label> Physician</label> <br>
				<input type="radio" id="administrator" name="radAnswer" value="administrator"> <label>Administrator</label> <br>
				<br>
				</span>
			</div>
			<label for="username"><b>User Name</b></label> <input type="text"
				placeholder="Enter User Name" name="username" required> <label
				for="email"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="email" required> <label
				for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="psw" required>
				
				
		</div>
		<button class="signup" type="submit">Sign Up</button>
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
