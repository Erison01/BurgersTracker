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
<h1 class="m-4 text-primary">Burger Tracker</h1>
<div>
    <table class="table table-striped table-bordered border-dark m-4 ">
        <thead>
        <tr>
            <th>Burger Name</th>
            <th>Restaurant Name</th>
            <th>Rating(out of 5)</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>


        <c:forEach items="${burgers}" var="burger">
            <tr>
                <td><c:out value="${burger.burgerName}"/></td>
                <td><c:out value="${burger.restaurantName}"/> </td>
                <td>$<c:out value="${burger.rating}"/> </td>
                <td class="d-flex justify-content-center align-items-center">
                    <a href="/burgers/edit/${burger.id}">Edit</a>

                </td>
            </tr>

        </c:forEach>

        </tbody>
    </table>
</div>
<div>
    <h1 class="m-4 text-primary">Add a Burger</h1>
    <div>
        <form:form action="/" method="post" modelAttribute="newBurger">
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
                <form:label path="rating">Rating</form:label>
                <form:input path="rating"></form:input>
                <form:errors path="rating"></form:errors>

            </p>
            <p class="m-4">
                <form:label path="notes">Notes</form:label>
                <form:input path="notes"></form:input>
                <form:errors path="notes"></form:errors>

            </p>
            <button type="submit" class="btn btn-primary m-4">Submit</button>
        </form:form>
    </div>
</div>
</body>
</html>
