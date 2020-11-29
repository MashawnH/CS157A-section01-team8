<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles.css">
<title>Administrator Homepage</title>
</head>
<body>
	<div class="row">
		<div class="column left"></div>
		<div class="column middle">
			<div class="middle-header">
				<div class="logout" style="float:right">
					<div id="logout-btn" style="align:center;">
						<a href="loginPage.jsp">Log out</a>
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
				<div class="body-btns">
					<button id="modify-medication-btn" onClick="initModifyForm()">Modify
						a Medication</button>
					<button id="view-modify-btn" onClick="showModify()">View
						Your Modifications</button>
				</div>
				<div class="body-btns">
					<button id="add-physician-btn" onClick="initAddPhysiciansForm()">Add
						a Physician</button>
					<button id="view-physicians-btn" onClick="showPhysicians()">View
						Physicians</button>
				</div>
			
			<div class="form-container">
					<form id="modify-medication-form" action="modifyValidation.jsp"
						method="post" style="display: none">
						<div class="modify-medication-body">
							<label for="email"><b>Modify Medications</b></label> <input
								id="adminEmail" type="text" placeholder="Enter Medication"
								name="medication" required> <label for="modify-date"><b>Date&Time</b></label>
							<input id="datePicker" type="date" name="modify_date" required>
							<input id="timePicker" type="time" name="modify_time" min="8:00"
								max="18:00" step="60" required>
							<button id=submit-btn type="submit">Submit</button>

							<script type="text/javascript">
							function hideAll() {
								var formVis = document
								.getElementById('modify-medication-form');
								var modVis = document
								.getElementById('view_modify_table');
								var physiciansVis = document
								.getElementById('add-physician-form');
								var physTableVis = document
								.getElementById('view_phys_table');
								
								formVis.style.display = "none";
								modVis.style.display = "none";
								physiciansVis.style.display = "none";
								physTableVis.style.display = "none";
								
								
							}
								function initModifyForm() {
								
									var formVis = document
											.getElementById('modify-medication-form');
									if (formVis.style.display === "none") {
										hideAll();
										formVis.style.display = "block";
										var today = new Date();
										var year = today.getFullYear();
										var month = String(today.getMonth() + 1)
												.padStart(2, '0');
										var day = String(today.getDate())
												.padStart(2, '0');
										document.getElementById('datePicker').min = year
												+ "-" + month + "-" + day;
									} else {
										formVis.style.display = "none";
									}
								}
								function submitModify() {
									var adminEmail = document
											.getElementById('adminEmail').value;
									var date = document
											.getElementById('datePicker').value;
									var time = document
											.getElementById('timePicker').value;
									console.log(adminEmail);
									console.log(date);
									console.log(time);
								}
							</script>
						</div>
					</form>
					
					<%-- add physician form --%>
					<div class="form-container">
						<form id="add-physician-form" action="addPhysicianValidation.jsp" method="post" style="display: none">
							<div class="add-physician-form">
								<label for="email"><b>Physician's Email</b></label>
								<input id="adminEmail" type="text" placeholder="Enter Email" name="email" required> 
								<label for="add"><b>Add</b></label>
								<textarea id="addphysician" rows="10" cols="60"
									placeholder="Enter Message" name="add" required></textarea>
								<button id=submit-btn type="submit">Submit</button>

								<script type="text/javascript">
									
									function initAddPhysiciansForm() {
										var formVis = document
												.getElementById('add-physician-form');
										if (formVis.style.display === "none") {
											hideAll();
											formVis.style.display = "block";
											var today = new Date();
											var year = today.getFullYear();
											var month = String(
													today.getMonth() + 1)
													.padStart(2, '0');
											var day = String(today.getDate())
													.padStart(2, '0');
										} else {
											formVis.style.display = "none";
										}
									}
									
									function showPhysicians() {
									
									var formVis = document
												.getElementById('view_phys_table');
										if (formVis.style.display === "none") {
											hideAll();
											formVis.style.display = "block";
										} else {
											formVis.style.display = "none";
										}
									}
									
									function showModify() {
								
									var formVis = document
												.getElementById('view_modify_table');
										if (formVis.style.display === "none") {
											hideAll();
											formVis.style.display = "block";
										} else {
											formVis.style.display = "none";
										}
									}
									function addPhysicain() {
										var adminEmail = document
												.getElementById('adminEmail').value;
										var add = document
												.getElementById('addphysician').value;
									}
								</script>
							</div>
						</form>
					</div>
					<div id="view_phys_table" style="display: none">

						<table class=fixed-table rules="all">
							<tr>
								<th>Admin Email</th>
								<th>Message</th>
								<th>Date</th>
							</tr>
							
								
								<%
									String userEmail = (String)session.getAttribute("SES_USEREMAIL");
									String db = "medprovider";
									String user = "root"; // assumes database name is the same as username
									String password = "Cannucks123!";
									String test = "nothing changed";
									try {
										java.sql.Connection con;
										Class.forName("com.mysql.cj.jdbc.Driver");
										con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medprovider?serverTimezone=EST5EDT", user, password);
										Statement stmt = con.createStatement();
										ResultSet rs = stmt
												.executeQuery("select physicianemail_msg, content, date from messages, physician_msg,"
														+ "(select patients_msg_id from patients_msg where patientsemail_msg = '" + userEmail
														+ "')Temp"
														+ " where Temp.patients_msg_id = msg_id and Temp.patients_msg_id = physician_msg_id");
										while (rs.next()) {
								
											%>
											
										<tr>
											 <td><%=rs.getString(1) %></td>
											 <td><%=rs.getString(2) %></td>
											 <td><%=rs.getString(3) %></td>
										</tr>
										<%
										}
										rs.close();
										stmt.close();
										con.close();
									} catch (SQLException e) {
										out.println("SQLException caught: " + e.getMessage());
									}
								%>
							
						</table>
					</div>
					<div id="view_modify_table" style="display: none">

						<table class=fixed-table rules="all">
							<tr>
								<th>Admin Email</th>
								<th>Date</th>
								<th>Time</th>
							</tr>
							
								
								<%
									try {
										java.sql.Connection con;
										Class.forName("com.mysql.cj.jdbc.Driver");
										con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medprovider?serverTimezone=EST5EDT", user, password);
										Statement stmt = con.createStatement();
										ResultSet rs = stmt
												.executeQuery("select physicianemail_app, appointment_date, appointment_time" 
														+ " from appointment, appointment_physician,"
														+ "(select patient_app_id from appointment_patient where patientemail_app = '" + userEmail
														+ "')Temp"
														+ " where Temp.patient_app_id = appointment_id and Temp.patient_app_id = physician_app_id");
										while (rs.next()) {
								
											%>
											
										<tr>
											 <td><%=rs.getString(1) %></td>
											 <td><%=rs.getString(2) %></td>
											 <td><%=rs.getString(3) %></td>
										</tr>
										<%
										}
										rs.close();
										stmt.close();
										con.close();
									} catch (SQLException e) {
										out.println("SQLException caught: " + e.getMessage());
									}
								%>
							
						</table>
					</div>
				</div>
			</div>
		</div>


		<div class="column right"></div>
	</div>
	
</body>
</html>