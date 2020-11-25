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
				<div class="logout" style="float: right">
					<div id="logout-btn" style="align: center;">
						<a href="loginPage.jsp">Log out</a>
					</div>
				</div>

				<div class="logo">
					<div class="container">
						<img src="images/logo.png" alt="Logo">
						<p>
							<b> <i>MedProvider</i>
							</b>
						</p>
					</div>
				</div>
			</div>
			<div class="middle-body">
				<ul class="body-btns">
					<li>
						<button id="make-appoint-btn" onClick="initAppointmentForm()">Make
							an Appointment</button>
					</li>
					<li>
						<button id="view-appoint-btn" onClick="initAppointmentForm()">View
							Your Appointments</button>
					</li>
					<li>
						<button id="contact-physician-btn" onClick="initMessageForm()">Contact
							a Physician</button>
					</li>
					
					<li>
						<button id="view-messages-btn" onClick="patientViewMessages()">View Messages</button>
					</li>
						
				</ul>
				
				<div class="form-container">
					<form id="make-appoint-form" action="appointmentValidation.jsp"
						method="post" style="display: none">
						<div class="make-appoint-body">
							<label for="email"><b>Physician's Email</b></label> <input
								id="physEmail" type="text" placeholder="Enter Email"
								name="email" required> <label for="appoint-date"><b>Date&Time</b></label>
							<input id="datePicker" type="date" name="appoint_date" required>
							<input id="timePicker" type="time" name="appoint_time" min="8:00"
								max="18:00" step="60" required>
							<button id=submit-btn type="submit">Submit</button>

							<script type="text/javascript">
								function initAppointmentForm() {
									var formVis = document
											.getElementById('make-appoint-form');
									if (formVis.style.display === "none") {
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

								function submitAppointment() {
									var physEmail = document
											.getElementById('physEmail').value;
									var date = document
											.getElementById('datePicker').value;
									var time = document
											.getElementById('timePicker').value;
									console.log(physEmail);
									console.log(date);
									console.log(time);
								}
							</script>
						</div>
					</form>

					<%-- message form --%>
					<div class="form-container">
						<form id="make-message-form" action="patientMessageValidation.jsp" method="post" style="display: none">
							<div class="make-message-form">
								<label for="email"><b>Physician's Email</b></label>
								<input id="physEmail" type="text" placeholder="Enter Email" name="email" required> 
								<label for="message"><b>Message</b></label>
								<textarea id="messagefrompatient" rows="10" cols="60"
									placeholder="Enter Message" name="message" required></textarea>
								<button id=submit-btn type="submit">Submit</button>

								<script type="text/javascript">
									function initMessageForm() {
										var formVis = document
												.getElementById('make-message-form');
										if (formVis.style.display === "none") {
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
									function submitMessage() {
										var physEmail = document
												.getElementById('physEmail').value;
										var message = document
												.getElementById('messagefrompatient').value;
										console.log(physEmail);
										console.log(message);
									}
								</script>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


		<div class="column right"></div>
	</div>

</body>
</html>