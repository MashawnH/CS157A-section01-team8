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
		<span class="sortOptions">
			<input type="radio" id="patients" name="radAnswer" value="patients">
			<label for="patients">Patient</label><br> <input type="radio"
				id="physician" name="radAnswer" value="physician"> <label
				for="physician">Physician</label><br> <input type="radio"
				id="administrator" name="radAnswer" value="administrator">
			<label for="administrator">Administrator</label>
			</span>
		</form>
	</div>






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
