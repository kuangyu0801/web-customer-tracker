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
            <table>
                <tbody>
                    <tr>
                        <td><lable>First name:</lable></td>
                        <td><form:input path="firstName"></form:input></td>
                    </tr>
                </tbody>
            </table>
        </form:form>
</div>
</body>
</html>
