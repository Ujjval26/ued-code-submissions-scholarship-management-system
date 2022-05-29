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
	<sql:update dataSource="${con}" var="count">
		INSERT INTO scholarship VALUES(?,?,?,?,?);  
		
		<sql:param value="${param.sn}"></sql:param>
		<sql:param value="${param.e}"></sql:param>
		<sql:param value="${param.d}"></sql:param>
		<sql:param value="${param.s1}"></sql:param>
		<sql:param value="${param.abc}"></sql:param> 

	</sql:update>
	<c:if test="${count==1}">

		<jsp:forward page="view_scholarship.jsp"></jsp:forward>

	</c:if>
</body>
</html>