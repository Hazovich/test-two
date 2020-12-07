<%@ page import="com.javanoob.web.DepartmentServlet" %>
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
        <h3 class="text-center">List of Departments</h3>
        <hr>
        <div class="container text-left">

            <a href="<%=request.getContextPath()%>/department/new" class="btn btn-success">Add
                New Department</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Tag Line</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="department" items="${listDepartment}">
                <tr>
                    <td><c:out value="${department.id}"/></td>
                    <td><c:out value="${department.name}"/></td>
                    <td><c:out value="${department.tagLine}"/></td>
                    <td><a href="edit?id=<c:out value='${department.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="delete?id=<c:out value='${department.id}' />">Delete</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="<%=request.getContextPath()%>/employee/listemp?id=<c:out value="${department.id}" />">List Employees</a>

                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>