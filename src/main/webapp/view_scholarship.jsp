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
<title>View Scholarships</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/6519af718f.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="icon" href="images/taskbar.png" type="image/icon type">
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<style>
.card {
	box-shadow: none;
	border: 2px solid #000;
}
</style>
</head>
<body>
	<jsp:include page="navbar_admin.jsp" /><br>
	<br>
	<br>
	<br>
	<h2 style="text-align: center; font-family: calibri; font-weight: 700;">View
		Scholarships</h2>

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

				</div>
			</div>
		</c:forEach>
	</div>
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
<script src="bootstrap/js/popper.min.js"></script>
</html>