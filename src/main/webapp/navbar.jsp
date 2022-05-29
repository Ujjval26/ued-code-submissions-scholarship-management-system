<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Navbar</title>
</head>
<style>
ul li a, .navbar-brand {
	font-family: calibri !important;
}

.nav-link, .btn b, ul li a {
	font-size: 19px;
}

.btn b, .nav-link, .dropdown-toggle {
	color: #000 !important;
}

.dropdown-menu li a {
	font-family: calibri !important;
}

.dropdown-menu li a:focus {
	background: #eee !important;
	color: #000 !important;
}

.navbar-brand {
	margin-right: 520px !important;
}

@media screen and (max-width:600px) {
	.navbar img {
		width: 10vw !important;
	}
}
</style>
<body>
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-light bg-transparent">
		<a class="navbar-brand" href="index.jsp"><img
			src="images/title_img1.png" style="width: 3vw;"><b
			style="margin-top: 2px !important;">ICT scholarship</b></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="index.jsp"><b>Home</b>
				</a></li>
				<li class="nav-item">
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button"
							id="dropdownMenuButton" data-mdb-toggle="dropdown"
							aria-expanded="false"
							style="background: none; font-family: calibri !important; color: gray; text-transform: Capitalize; border: none; box-shadow: none; font-weight: 500; margin-top: 2px;">
							<b style="font-weight: 550;">Students Corner</b>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton"
							style="border: none">
							<li><a class="dropdown-item" href="scholarship.jsp">Scholarships</a></li>
							<li><a class="dropdown-item" href="form.jsp">Scholarships
									Form Details</a></li>


						</ul>
					</div>
				</li>
				<li class="nav-item"><a class="nav-link" href="contact.jsp"><b>Contact-us</b></a>
				</li>


				<li class="nav-item">
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button"
							id="dropdownMenuButton" data-mdb-toggle="dropdown"
							aria-expanded="false"
							style="background: none; font-family: calibri !important; color: gray; text-transform: Capitalize; border: none; box-shadow: none; font-weight: 500; margin-top: 2px;">
							<b style="font-weight: 550;">Account</b>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton"
							style="border: none">
							<li><a class="dropdown-item" href="user_dashboard.jsp">Dashboard</a></li>
							<li><a class="dropdown-item" href="signout.jsp">Sign out</a></li>

						</ul>
					</div>
				</li>

			</ul>
		</div>
	</nav>
</body>
</html>