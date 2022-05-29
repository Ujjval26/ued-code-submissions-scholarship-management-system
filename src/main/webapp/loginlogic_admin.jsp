<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Validation</title>
</head>
<body>
	<%
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
	String name, pass, admin_name, admin_pass;
	int count_admin = 0;
	name = request.getParameter("name");
	pass = request.getParameter("passwd");
	admin_name = "scholarship";
	admin_pass = "admin123";
	Statement stmt = con.createStatement();
	int count = 0;
	int count1 = 0;
	if (name.equals("scholarship")) {
		if (pass.equals("admin123")) {
			count_admin += 1;

		}

	}
	if (count_admin == 1) {
		RequestDispatcher rd5 = request.getRequestDispatcher("admin.jsp");
		rd5.forward(request, response);
	}
	%>


</body>
</html>