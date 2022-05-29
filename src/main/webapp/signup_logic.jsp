<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Validation</title>
</head>
<body>

	<%
	String email, name, phno, address, passwd;
	name = request.getParameter("name");
	email = request.getParameter("email");
	phno = request.getParameter("phno");
	address = request.getParameter("address");
	passwd = request.getParameter("psw");

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
	PreparedStatement p = con.prepareStatement("insert into signup values(?,?,?,?,?)");

	p.setString(1, name);
	p.setString(2, email);
	p.setString(3, phno);
	p.setString(4, address);
	p.setString(5, passwd);

	p.executeUpdate();
	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	%>

</body>
</html>