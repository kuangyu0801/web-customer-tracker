<%--
  Created by IntelliJ IDEA.
  User: Kuang-Yu
  Date: 2021/8/2
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Customer Form</title>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer Relationship Manage</h2>
    </div>
</div>
<div id="container">
        <form:form action="saveCustomer" modelAttribute="customer" method="POST">
            <!-- associate hidden field with id -->
            <form:hidden path="id" ></form:hidden>
            <table>
                <tbody>
                    <tr>
                        <td><lable>First name:</lable></td>
                        <td><form:input path="firstName"></form:input></td>
                    </tr>
                </tbody>
                <tbody>
                <tr>
                    <td><lable>Last name:</lable></td>
                    <td><form:input path="lastName"></form:input></td>
                </tr>
                </tbody>
                <tbody>
                <tr>
                    <td><lable>Email:</lable></td>
                    <td><form:input path="email"></form:input></td>
                </tr>
                <tr>
                    <td><lable></lable></td>
                    <td><input type="submit" value="Save"></input></td>
                </tr>
                </tbody>
            </table>
        </form:form>
        <!-- TODO: fix navigation page-->
        <c:url var="addUrl" value="${Mappings.SHOW_ADD_FORM}"></c:url>
        <a href="${addUrl}">Add Customer</a>
</div>
</body>
</html>
