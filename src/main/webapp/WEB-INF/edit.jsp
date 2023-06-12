<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/11/2023
  Time: 11:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<div class="d-flex justify-content-xl-between align-items-center m-4">
    <h1 class="text-success">Edit Burgers</h1>
    <a class="m-4  me-5" href="/">Go back</a>
</div>
<form:form action="/update/${theBurger.id}" method="put" modelAttribute="theBurger">
    <p class="m-4">
        <form:label path="burgerName">Burger Name</form:label>
        <form:input path="burgerName"></form:input>
        <form:errors path="burgerName"></form:errors>

    </p>
    <p class="m-4">
        <form:label path="restaurantName">Restaurant Name</form:label>
        <form:input path="restaurantName"></form:input>
        <form:errors path="restaurantName"></form:errors>

    </p>
    <p class="m-4">
        <form:label path="notes">Notes</form:label>
        <form:input path="notes"></form:input>
        <form:errors path="notes"></form:errors>

    </p>
    <p class="m-4">
        <form:label path="rating">Rating</form:label>
        <form:input path="rating"></form:input>
        <form:errors path="rating"></form:errors>

    </p>
    <button type="submit" class="btn btn-primary m-4">Submit</button>
</form:form>
</body>
</html>
