
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>

</head>
<body>

	<%
	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	SimpleDateFormat formatter1 = new SimpleDateFormat("HH:mm:ss");
	Date date = new Date();
	Date date1 = new Date(session.getLastAccessedTime());
	String name, phone, mail, scholarship, stat = "Under Review";
	name = request.getParameter("name");
	mail = request.getParameter("email");
	phone = request.getParameter("phone");
	scholarship = request.getParameter("scholarship_name");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
	PreparedStatement p = con.prepareStatement("insert into form values(?,?,?,?,?,?,?,?)");

	p.setString(1, name);
	p.setString(2, mail);
	p.setString(3, phone);
	p.setString(4, scholarship);
	p.setString(5, formatter.format(date));
	p.setString(6, formatter1.format(date1));
	p.setString(7, stat);
	p.setString(8, null);

	p.executeUpdate();
	response.sendRedirect("user_dashboard.jsp");
	%>
</body>
</html>