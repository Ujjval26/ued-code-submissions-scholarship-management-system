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
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<title>Dashboard</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="images/logo-titlebar.png" type="image/icon">

<style>
td {
	font-size: 18px;
}

th {
	font-size: 19px;
}

ul li a, .navbar-brand {
	font-family: calibri !important;
}

.nav-link, .btn b, ul li a {
	font-size: 19px;
}

.dropdown {
	margin-top: -3px;
}

.btn {
	box-shadow: none !important;
}
</style>
</head>
<body>
	<%
	String username1 = (String) session.getAttribute("User"); 
	%>

	<nav
		class="navbar fixed-top navbar-expand-lg navbar-light bg-transparent">
		<a class="navbar-brand" href="index.jsp"><img
			src="images/title_img1.png" style="width: 3vw;"><b>Scholarship</b></a>
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
				<li class="nav-item"><a class="nav-link" href="contact.jsp"><b>Hello
							<%=username1%></b></a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1 style="font-weight: 700; margin-left: 1.5vw; color: #000;">Dashboard</h1>
	<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
	<sql:query dataSource="${con}" var="rs">  
									SELECT * from form where Name='<%=username1%>';  
								</sql:query>
	<table class="table align-middle mb-0 bg-white user">
		<thead>
			<tr>
				<th><b>Applicant's Name</b></th>
				<th><b>Scholarship Name</b></th>
				<th><b>Date Of Submission</b></th>
				<th><b>Time Of Submission</b></th>
				<th><b>Status</b></th>
				<th></th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="table" items="${rs.rows}">
				<form action="delete_scholarship_user.jsp" method="post">
					<tr>
						<td>${table.Name}</td>
						<td>${table.Scholarship}</td>
						<td>${table.Date}</td>
						<td>${table.Time}</td>
						<td>${table.status}</td>
						<td><c:if test="${table.status=='Under Review'}">
								
					    <button type="submit" class="btn btn-danger">Delete</button>
									
							</c:if></td>
						<input type="hidden" name="id" value="${table.ID}">
						
					</tr>
				</form>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp" />
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>

</html>