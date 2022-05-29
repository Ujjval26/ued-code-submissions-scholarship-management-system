<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Forget Password</title>
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />

<style>
a:hover {
	color: blue !important;
	text-decoration: none !important;
}

.card {
	box-shadow: none;
}
</style>
</head>
<body>

	<section class="vh-100 bg-image" style="background: none;">
		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-9 col-lg-7 col-xl-6">
						<div class="card" style="border-radius: 15px; background: none;">
							<div class="card-body p-5">
								<h2 class="text-center mb-5" style="color: black;">Forget
									Password</h2>


								<form action="forget_pass_logic.jsp" method="post">



									<div class="form-outline mb-4">
										<input type="email" id="form3Example3cg"
											class="form-control form-control-lg" name="email" required />
										<label class="form-label" for="form3Example3cg">Your
											Email</label>
									</div>

									<div class="form-outline mb-4">
										<input type="password" id="form3Example3cg"
											class="form-control form-control-lg" name="pass" required />
										<label class="form-label" for="form3Example3cg">New
											Password</label>
									</div>
									<div class="form-outline mb-4">
										<input type="password" id="form3Example3cg"
											class="form-control form-control-lg" name="repass" required />
										<label class="form-label" for="form3Example3cg">Retype
											Password</label>
									</div>


									<div class="d-flex justify-content-center">
										<button type="submit"
											class="btn btn-primary btn-block btn-lg gradient-custom-4 text-body"
											style="color: #fff !important;">Submit</button>
									</div>
									<a href="login.jsp" style="color: #000;"><br>Go back
										to login Page</a>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/app.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</html>