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
<title>Delete Scholarships</title>
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
</head>
<body>
	<jsp:include page="navbar_admin.jsp" /><br>
	<br>
	<br>
	<br>
	<h2
		style="text-align: center; font-family: calibri; font-weight: 700; margin-bottom: -40px;">Delete
		Scholarships</h2>
	<br>
	<br>
	<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
	<sql:query dataSource="${con}" var="rs">  
									SELECT * from scholarship;  
								</sql:query>
	<table class="table align-middle mb-0 bg-white user">
		<thead>
			<tr>
				<th><b>Name</b></th>
				<th><b>Eligibility</b></th>
				<th><b>Documents</b></th>
				<th><b>Steps</b></th>

				<th></th> 
			</tr>
		</thead>
		<tbody>

			<c:forEach var="table" items="${rs.rows}">
				<form action="delete_scholarship_logic.jsp" method="post">
					<tr>
						<td>${table.Name}</td>
						<td>${table.eligibility}</td>
						<td>${table.document}</td>
						<td>${table.steps}</td>

						<td><button type="submit" class="btn btn-danger">Delete</button></td>
						<input type="hidden" name="id" value="${table.id}">
					</tr>
				</form>
			</c:forEach>
		</tbody>
	</table>
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
<script src="bootstrap/js/popper.min.js"></script>
</html>