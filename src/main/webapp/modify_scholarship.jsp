<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Scholarships</title>
<!------------------------------------------------------------------------------------------------------------>
<link rel="stylesheet" type="text/css" href="css/style.css">
<!------------------------------------------------------------------------------------------------------------>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<!------------------------------------------------------------------------------------------------------------>
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<!------------------------------------------------------------------------------------------------------------>
<script src="https://kit.fontawesome.com/6519af718f.js"
	crossorigin="anonymous"></script>
<!------------------------------------------------------------------------------------------------------------>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<!------------------------------------------------------------------------------------------------------------>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<!------------------------------------------------------------------------------------------------------------>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<!------------------------------------------------------------------------------------------------------------>
<link rel="icon" href="images/taskbar.png" type="image/icon type">
<!------------------------------------------------------------------------------------------------------------>
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<!------------------------------------------------------------------------------------------------------------>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<!------------------------------------------------------------------------------------------------------------>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<!------------------------------------------------------------------------------------------------------------>
<style>
.card {
	box-shadow: none;
}
</style>

</head>
<body>


	<!--- Navbar --->
	<jsp:include page="navbar_admin.jsp" /><br>
	<br>
	<br>
	<br>
	<h2
		style="text-align: center; font-family: calibri; font-weight: 700; margin-bottom: -100px;">Modify
		Scholarships</h2>
	<section class="vh-100">

		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-xl-9">

					<form action="modify_scholarship_logic.jsp">

						<div class="card" style="border-radius: 15px;">
							<div class="card-body">

								<div class="row align-items-center pt-4 pb-3">
									<div class="col-md-3 ps-5">

										<h6 class="mb-0">Scholarship ID</h6>

									</div>
									<div class="col-md-9 pe-5">

										<input type="text" class="form-control form-control-lg"
											name="id" />

									</div>
								</div>

								<div class="row align-items-center pt-4 pb-3">
									<div class="col-md-3 ps-5">

										<h6 class="mb-0">Edit Details</h6>

									</div>
									<div class="col-md-9 pe-5">


										<select name="data" id="col"
											style="height: 40px; border: 1px solid #BDBDBD; border-radius: 4px; width: 200px; text-align: center">
											<option value="name">Name</option>
											<option value="ele">Eligibility</option>
											<option value="doc">Documents</option>
											<option value="step">Steps</option>
										</select>

									</div>
								</div>

								<div class="row align-items-center pt-4 pb-3">
									<div class="col-md-3 ps-5">

										<h6 class="mb-0">Modified Data</h6>

									</div>
									<div class="col-md-9 pe-5">

										<input type="text" name="datas"
											class="form-control form-control-lg" />

									</div>
								</div>
							</div>
							<div class="px-1 py-4" style="margin-left: 300px;">
								<button type="submit" class="btn btn-primary btn-lg">Modify
									Scholarship</button>
							</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
<!------------------------------------------------------------------------------------------------------------>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
<!------------------------------------------------------------------------------------------------------------>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
<script src="bootstrap/js/popper.min.js"></script>
</html>