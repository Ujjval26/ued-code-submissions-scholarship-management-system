<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Sign Up</title>
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />


<style>
@media screen and (min-width:1024px) {
	body {
		overflow-y: hidden;
	}
}

.card {
	box-shadow: none !important;
}

.log_in:hover {
	color: black !important;
	background: none !important;
}

div {
	background: none !important;
}

.for:hover {
	color: #1266F1 !important;
}

a:hover {
	text-decoration: none;
}
</style>
</head>
<body>

	<!--NAVBAR-->
	<br>
	<br>
	<br>
	<section class="h-100" style="margin-top: -70px;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-xl-10">
					<div class="card text-black ">
						<div class="row g-0 ">
							<div class="col-lg-6 d-flex align-items-center none">
								<div class="text-white px-3 py-4 p-md-5 mx-md-4 col-md-12"
									style="width: color: white !important;">
									<img src="images/signup1.png" class="img-fluid"
										alt="Sample image" class="signup_image">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="card-body p-md-5 mx-md-4">
									<div class="text-center">
										<h4 class="mt-1 mb-5 pb-1"
											style="font-family: arial; font-weight: 700;">Create
											Account</h4>
									</div>

									<form action="signup_logic.jsp" method="post">

										<div class="form-outline mb-4">
											<input type="text" id="form2Example11" class="form-control"
												placeholder="Enter Username" name="name" required /> <label
												class="form-label" for="form2Example11">Username</label>
										</div>

										<div class="form-outline mb-4">
											<input type="email" id="form2Example22" class="form-control"
												name="email" placeholder="Enter Email" required /> <label
												class="form-label" for="form2Example22">Email</label>

										</div>

										<div class="form-outline mb-4">
											<input type="text" id="form2Example22" class="form-control"
												name="phno" placeholder="Enter Phone Number" required /> <label
												class="form-label" for="form2Example22">Phone Number</label>

										</div>

										<div class="form-outline mb-4">
											<input type="text" id="form2Example22" class="form-control"
												name="address" placeholder="Enter Address" required /> <label
												class="form-label" for="form2Example22">Address</label>

										</div>

										<div class="form-outline mb-4">
											<input type="password" id="form2Example22"
												class="form-control" name="psw" placeholder="Enter Password"
												required /> <label class="form-label" for="form2Example22">Password</label>

										</div>


										<button type="submit" class="btn btn-primary"
											style="margin-left: 100px; width: 130px;">Sign up</button>
										<a href="login.jsp"><p class="mb-0 me-2 for"
												style="width: 150px; margin-top: 10px; color: #000; margin-left: 5px;">Go
												back to login</p></a>
								</div>

								</form>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<!-- Footer -->

</body>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</html>
