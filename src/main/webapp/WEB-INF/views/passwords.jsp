<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Passwords</title>

	<link type="text/css" href="<c:url value='/resources/css/style.css' />" rel="stylesheet" />
	<script src="<c:url value='/resources/js/sorttable.js' />" type="text/javascript"></script>
	
</head>


<body>
	<h2>Passwords</h2>
	<c:if test="${not empty success}">
		<br/>
    	<div class="alert alert-success lead">
	    	${success}
		</div>
		<br/>
	</c:if>
	<a href="<c:url value='/passwords/new' />">Add new password</a>
	<br/>
	<br/>
	
	<table class="sortable" id ="tablestyle">
		<tr>
			<th>System</th><th>User</th><th>Password</th>
		</tr>
		<c:forEach items="${passwords}" var="passwords">
			<tr>
			<td>${passwords.system}</td>
			<td>${passwords.user}</td>
			<td>${passwords.password}</td>
			<td><a href="<c:url value='/passwords/delete-${passwords.id}' />" class="btn btn-danger custom-width" onclick="return confirm('Are you sure?')" >Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>