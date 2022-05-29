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
<title>Admin Here</title>
<!--------------------------------------------------------------------------------------------------------------->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<!--------------------------------------------------------------------------------------------------------------->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--------------------------------------------------------------------------------------------------------------->
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<!--------------------------------------------------------------------------------------------------------------->
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<!--------------------------------------------------------------------------------------------------------------->
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--------------------------------------------------------------------------------------------------------------->
<link rel="icon" href="images/logo-titlebar.png" type="image/icon">
<!--------------------------------------------------------------------------------------------------------------->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<!--------------------------------------------------------------------------------------------------------------->


<!---- Css ---->
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
</style>
</head>
<body>

	<!----Navbar---->
	<jsp:include page="navbar_admin.jsp" /><br>
	<br>
	<br>
	<br>
	<c:set var="i" value="Under Review" scope="session" />

	<table class="table col-md-12 col-sm-4">
		<thead>
			<tr>
				<th scope="col"><b>Applicant's Name</b></th>
				<th scope="col"><b>Scholarship Name</b></th>
				<th scope="col"><b>Date Of Submission</b></th>
				<th scope="col"><b>Time Of Submission</b></th>
				<th scope="col"><b></b></th>
				<th scope="col"><b></b></th>
			</tr>
		</thead>
		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
		<sql:query dataSource="${con}" var="rs">SELECT * from form;</sql:query>

		<c:forEach var="table" items="${rs.rows}">
			<form action="approve.jsp" method="post">
				<c:if test="${table.status == i}">
					<tr>
						<td>${table.Name}</td>
						<td>${table.Scholarship}</td> 
						<td>${table.Date}</td>
						<td>${table.Time}</td>
						<input type="hidden" name="id" value="${table.ID}">

						<!------Approve button------->
						<td><input type="submit" name="vall" value="Approve"
							class="btn btn-success"></td>
				</c:if>
			</form>

			<form action="declined.jsp">
				<c:if test="${table.status == i}">
					<input type="hidden" name="id" value="${table.ID}">

					<!------Declined button------->
					<td><input type="submit" name="valls" value="Declined"
						class="btn btn-danger"></td>

				</c:if>
			</form>
		</c:forEach>
		</tr>
		</tbody>
	</table>
</body>

<!--------------------------------------------------------------------------------------------------------------->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
<script src="bootstrap/js/popper.min.js"></script>
<!--------------------------------------------------------------------------------------------------------------->
</html>