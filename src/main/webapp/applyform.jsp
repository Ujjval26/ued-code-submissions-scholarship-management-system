<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Apply For Scholarship</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #fff;
	height: 100%;
	color: #000;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=file] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus, input[type=file]:focus
	{
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	color: white !important;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 30%;
	opacity: 0.9;
	text-align: center;
	margin-left: 30vw;
	font-size: 20px;
	text-transform: capitalize;
}
</style>
</head>
<body>
	<!--Navbar-->
	<jsp:include page="navbar.jsp" />
	<br>
	<br>
	<br>
	<br>

	<form action="applyformlogic.jsp" method="post">
		<div class="container">
			<h1>Application Form</h1>
			<p>Please fill this form for apply for the scholarship.</p>
			<hr>

			<label for="name"><b>Name</b></label> <input type="text"
				placeholder="Enter Name" name="name" id="name" required> <label
				for="email"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="email" id="email" required>

			<label for="phone"><b>Phone Number</b></label> <input type="text"
				placeholder="Enter Phone Number" id="phone" name="phone" required><br>
			<label for="phone"><b>Scholarship Name</b></label> <input type="text"
				placeholder="Enter Scholarship Name" id="phone"
				name="scholarship_name" required> 
				
				<label><b>Domicile
					Certificate</b></label> <input type="file" name="certi" required><br>
			<br> <label><b>Student Photograph</b></label> <input type="file"
				name="email" required><br>
				
			<br> <label><b>Self-attested copy of previous
					academic mark sheet </b></label> <input type="file" name="email" required><br>
			<br> <label><b>Fee receipt of current course year </b></label> <input
				type="file" name="email" required><br>
			<br> 
			<label><b>Scanned copy of Aadhar
					Enrollment/Aadhar Card </b></label> <input type="file" name="email" required><br>
			<br> <label><b>Income certificate issued by
					designated state/UT authority </b></label> <input type="file" name="email"
				required><br> <br>
			<hr>
			<button type="submit" class="registerbtn btn btn-primary">Apply</button>
		</div>
	</form>


	<!-- FOOTER -->
	<jsp:include page="footer.jsp" />
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</body>
</html>