<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="isUser()">

</body>

<% 
						String db = "medprovider";
						String user = "root"; // assumes database name is the same as username
						String password = "Cannucks123!";
						int aUser = -1;
						int aPatient = -1;
						int aPhysician = -1;
						try {
						    
						    java.sql.Connection con; 
						    Class.forName("com.mysql.cj.jdbc.Driver");
						    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medprovider?serverTimezone=EST5EDT",user, password);
						    Statement stmt = con.createStatement();
						    String email = request.getParameter("email");
						    ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM medprovider.users WHERE Email = '" + email + "'");
						    rs.next();
						    aUser = rs.getInt(1);
						    rs.close();
						    stmt.close();
						    con.close();
						} catch(SQLException e) { 
						    out.println("SQLException caught: " + e.getMessage()); 
						}

						%>
<script type="text/javascript">
function isNotNewEmail(){
	var notNewEmail = "<%= aUser %>";
	
	if(notNewEmail >0){
			alert("Cannot create new account with this email");
	}
	else{
		
		//create new user and update user table and also update either patient/physician/admin table as well. 
	}
}
</script>


</html>