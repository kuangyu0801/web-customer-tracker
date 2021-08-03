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

		<!-- put new buttom: Add Customer -->
		<c:url var="addUrl" value="/customer/showFormForAdd"></c:url>
		<a href="${addUrl}">Add Customer</a>


		<!-- add html table here-->
		<table border="1" cellpadding="5">
			<tr>
				<td>First Name</td>
				<td>Last Name</td>
				<td>Email</td>
				<td>Action</td>
			</tr>

			<c:forEach var="customer" items="${customers}">
				<!-- construct an update linke with customer id-->
				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="customerId" value="${customer.id}"></c:param>
				</c:url>
				<c:url var="deleteLink" value="/customer/delete">
					<c:param name="customerId" value="${customer.id}"></c:param>
				</c:url>
				<tr>
					<td> ${customer.firstName}</td>
					<td> ${customer.lastName}</td>
					<td> ${customer.email}</td>
					<td>
						<a href="${updateLink}">Update</a>
						<!-- prompt notification with nodejs-->
						<a href="${deleteLink}"
						   onclick="if (!(confirm('Are you sure you want to delte this customer?'))) return false" >Delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>

</body>

</html>









