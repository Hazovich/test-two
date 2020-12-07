<%@ page import="com.javanoob.web.EmployeeServlet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            <a href="<%=request.getContextPath()%>/department/list" class="navbar-brand"> Management Application </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/department/list"
                   class="nav-link">Department List</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <c:if test="${employee != null}">
            <form action="updateemp" method="post">
                </c:if>
                <c:if test="${employee == null}">
                <form action="insertemp" method="post">
                    </c:if>

                    <caption>
                        <h2>
                            <c:if test="${employee != null}">
                                Edit Employee
                            </c:if>
                            <c:if test="${employee == null}">
                                Add New Employee
                            </c:if>
                        </h2>
                    </caption>

                    <c:if test="${employee != null}">
                        <input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
                    </c:if>

                    <fieldset class="form-group">
                        <label>Employee Name</label> <input type="text"
                                                        value="<c:out value='${employee.name}' />" class="form-control"
                                                        name="name" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Employee Email</label> <input type="email" required
                                                         value="<c:out value='${employee.email}' />" class="form-control"
                                                         name="email">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Employee Country</label> <input type="text"
                                                           value="<c:out value='${employee.country}' />" class="form-control"
                                                           name="country">
                    </fieldset>

                        <fieldset class="form-group">
                            <label>Employee Salary</label> <input type="text"
                                                                   value="<c:out value='${employee.salary}' />" class="form-control"
                                                                   name="salary">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Employee Day of Hire</label> <input type="date"
                                                                   value="<c:out value='${employee.dateHire}' />" class="form-control"
                                                                   name="date_hire">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Employee Department Id</label> <input type="text" required
                                                                   value="<c:out value='${employee.idDepartment}' />" class="form-control"
                                                                   name="id_department">
                        </fieldset>

                    <button type="submit" class="btn btn-success">Save</button>
                </form>
        </div>
    </div>
</div>
</body>
</html>