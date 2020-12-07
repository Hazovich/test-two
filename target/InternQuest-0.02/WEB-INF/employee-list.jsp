<%@ page import="com.javanoob.web.EmployeeServlet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Management Application</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark"
         style="background-color: blue">
        <div>
            <a href="<%=request.getContextPath()%>/department/list" class="navbar-brand">Management Application </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/department/list"
                   class="nav-link">Departments List</a></li>
        </ul>
    </nav>
</header>
<br>

<div class="row">

    <div class="container">
        <h3 class="text-center">List of Employees</h3>
        <hr>
        <div class="container text-left">

            <a href="newemp" class="btn btn-success">Add
                New Employee</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Salary</th>
                <th>Date Hire</th>
                <th>Department</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="employee" items="${listEmployee}">

                    <tr>
                        <td><c:out value="${employee.id}"/></td>
                        <td><c:out value="${employee.name}"/></td>
                        <td><c:out value="${employee.email}"/></td>
                        <td><c:out value="${employee.country}"/></td>
                        <td><c:out value="${employee.salary}"/></td>
                        <td><c:out value="${employee.dateHire}"/></td>
                        <td><c:out value="${employee.idDepartment}"/></td>
                        <td><a href="editemp?id=<c:out value='${employee.id}' />">Edit</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="deleteemp?id=<c:out value='${employee.id}' />">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>

        </table>
    </div>
</div>
</body>
</html>