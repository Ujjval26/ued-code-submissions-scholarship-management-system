<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<title>Our Scholarship</title>
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
.card {
	box-shadow: none;
	border: 2px solid #000;
}

.dropdown-toggle {
	margin-top: -2px !important;
}

.navbar-brand {
	margin-right: 520px !important;
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
	<br>
	<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
	<sql:query dataSource="${con}" var="rs">  
									SELECT * from scholarship;  
								</sql:query>
	<div class="row" style="margin-left: 6vw;">

		<c:forEach var="table" items="${rs.rows}">

			<div class="card col-md-5"
				style="margin-left: 2vw; width: 44%; margin-top: 2vw;">
				<div class="card-body">
					<div>
						<h4 class="card-title">${table.Name}</h4>
					</div>
					<p class="card-text">
						<b>Eligibility</b><br> ${table.eligibility} <br> <b>Documents</b>
						<br> ${table.document} <br> <b>Steps</b> <br>
						${table.steps}
					</p>
					<a href="applyform.jsp"
						style="color: white !important; font-size: 15px;">
						<button type="submit" class="btn btn-primary">Apply</button>
					</a>
				</div>
			</div>
		</c:forEach>
	</div>


	<br>
	<br>

	<br>
	<!-- FOOTER -->
	<jsp:include page="footer.jsp" />

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</body>
</html>