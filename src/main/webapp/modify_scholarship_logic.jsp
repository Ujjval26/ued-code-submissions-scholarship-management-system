<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Scholarship</title>
</head>
<body>
	<c:if test="${param.data=='name'}">

		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
		<sql:update dataSource="${con}" var="rs">  
		update scholarship set Name=? where id=? 
		<sql:param value="${param.datas}"></sql:param>
			<sql:param value="${param.id}"></sql:param>
		</sql:update>
	</c:if>
	<c:if test="${param.data=='ele'}">

		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
		<sql:update dataSource="${con}" var="rs">  
		update scholarship set eligibility=? where id=? 
		<sql:param value="${param.datas}"></sql:param>
			<sql:param value="${param.id}"></sql:param>
		</sql:update>
	</c:if>
	<c:if test="${param.data=='doc'}">

		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
		<sql:update dataSource="${con}" var="rs">  
		update scholarship set Document=? where id=? 
		<sql:param value="${param.datas}"></sql:param>
			<sql:param value="${param.id}"></sql:param>
		</sql:update>
	</c:if>
	<c:if test="${param.data=='step'}">

		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
		<sql:update dataSource="${con}" var="rs">  
		update scholarship set steps=? where id=? 
		<sql:param value="${param.datas}"></sql:param>
			<sql:param value="${param.id}"></sql:param>
		</sql:update>
	</c:if>
	<jsp:forward page="view_scholarship.jsp"></jsp:forward>

</body>
</html>