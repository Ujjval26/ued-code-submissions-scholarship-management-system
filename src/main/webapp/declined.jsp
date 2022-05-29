<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3307/project" user="root" password="root" />

	<sql:update dataSource="${con}" var="rs">  
		update form set status="Declined" where ID=? 
		
		<sql:param value="${param.id}"></sql:param>
	</sql:update>
	<jsp:forward page="admin.jsp"></jsp:forward>
</body>
</html>