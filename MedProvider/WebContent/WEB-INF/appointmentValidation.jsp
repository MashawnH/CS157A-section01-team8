<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="createAppointment()">
</body>
<%
	String userEmail = (String)session.getAttribute("SES_USEREMAIL");
	String physEmail = request.getParameter("email");
	String date = request.getParameter("appoint_date");
	String time = request.getParameter("appoint_time");
	
	String db = "medprovider";
	String user = "root"; // assumes database name is the same as username
	String password = "Cannucks123!";
	int aPhysician = -1;
	try {
	    
	    java.sql.Connection con; 
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medprovider?serverTimezone=EST5EDT",user, password);
	    Statement stmt = con.createStatement();
	    ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM medprovider.physicians WHERE Emailphysician = '" + 
		    	physEmail +"'");
		rs.next();
		aPhysician = rs.getInt(1);
	    rs.close();
	    stmt.close();
	    con.close();
	} catch(SQLException e) { 
	    out.println("SQLException caught: " + e.getMessage()); 
	}
%>

<script type="text/javascript">
	function createAppointment(){
		var physFound = "<%= aPhysician %>";
		if(physFound>0){
			<%
			if(aPhysician>0){	
				try {
				    
				    java.sql.Connection con; 
				    Class.forName("com.mysql.cj.jdbc.Driver");
				    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medprovider?serverTimezone=EST5EDT",user, password);
				    Statement stmt = con.createStatement();
				    int i = stmt.executeUpdate(
							"INSERT INTO appointment(Emailpatient_appoint, Emailphysician_appoint, appointment_date, appointment_time)VALUES('" + userEmail + "','" + physEmail + "','" + date + "','" + time +"')");
				    stmt.close();
				    con.close();
				} catch(SQLException e) { 
				    out.println("SQLException caught: " + e.getMessage()); 
				}
			}
			%>
			alert("Appointment Created");
			window.location= "patientHome.jsp";
		}
		else{
			alert("Physician not found");
			window.location= "patientHome.jsp";
		}
	}
</script>

</html>