<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Navbar</title>
<style>
.navbar {
	font-weight: 700;
	font-size: 18px !important;
}

.nav-link {
	color: #000 !important;
}

.dropdown-item {
	font-size: 18px !important;
}

.button {
	margin-left: 30px !important;
	margin-top: 2px !important;
	box-shadow: none !important;
	font-size: 14px !important;
}
</style>
</head>
<body>
	<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="admin.jsp" style="margin-left: 120px;">ICT
			scholarship</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto" style="margin-left: 200px;">
				<li class="nav-item active"><a class="nav-link"
					href="admin.jsp">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Scholarship </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="add_scholarship.jsp">Add
							Scholarships</a> <a class="dropdown-item" href="view_scholarship.jsp">View
							Scholarships</a> <a class="dropdown-item"
							href="modify_scholarship.jsp">Modify Scholarships</a> <a
							class="dropdown-item" href="del_scholarship.jsp">Delete
							Scholarships</a>
					</div></li>
				<li>
					<button class="btn btn-primary button" type="submit">
						<a href="signout.jsp" style="color: #fff;">Log Out</a>
					</button>
				</li>
			</ul>

		</div>
	</nav>
</body>
</html>