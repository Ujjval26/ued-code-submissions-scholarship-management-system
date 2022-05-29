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
	int count = 0, count1 = 0;
	name = request.getParameter("name");
	pass = request.getParameter("passwd");

	Statement stmt = con.createStatement();

	ResultSet rs = stmt.executeQuery("select * from signup");

	Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	String selectQ1 = "select * from `signup`";
	ResultSet rs1 = stmt1.executeQuery(selectQ1);

	while (rs.next()) {

		if (name.equals(rs.getString("name")) && pass.equals(rs.getString("passwd"))) {

			count = 1;
		}

	}

	while (rs1.next()) {
		if (rs1.getString("name").equals(name)) {
			session.setAttribute("User", rs1.getString("name"));

			count1 = 1;

			break;
		}
	}

	if (count == 1 && count1 == 1) {
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

	if (count == 0) {
		out.print(
		"<h6 style=\"color:red;margin-top:-435px; text-align: center;margin-left:460px;\">Entered Username Or Password Is Incorrect</h6>");
		RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
		rd1.include(request, response);
	}
	%>


</body>
</html>