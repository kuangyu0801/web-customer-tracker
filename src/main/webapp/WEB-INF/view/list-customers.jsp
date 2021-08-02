<!DOCTYPE html>
<%-- using jstl tag --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
	<title>List Customers</title>
	
</head>

<body>

<div id="wrapper">
	<div id="header">
		<h2>CRM - Customer Relationship Manage</h2>
	</div>
</div>
<div id="container">
	<div id="content">
		<!-- add html table here-->
		<table border="1" cellpadding="5">
			<tr>
				<td>First Name</td>
				<td>Last Name</td>
				<td>Email</td>
			</tr>

			<c:forEach var="customer" items="${customers}">
				<tr>
					<td> ${customer.firstName}</td>
					<td> ${customer.lastName}</td>
					<td> ${customer.email}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>

</body>

</html>









