<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>List of Users Searched by Name</title>
</head>
<body>
<center>
    <h1>Searched list of users</h1>
    <c:url var="addUrl" value="/ovikh/main/users/add" />
    <c:url var="filterUrl" value="/ovikh/main/users/search" />
    <table style="border: 1px solid; width: 500px; text-align:center">
        <thead style="">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>isAdmin</th>
            <th>Created Date</th>
            <th colspan="4"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user">
            <c:url var="editUrl" value="/ovikh/main/users/edit?id=${user.id}" />
            <c:url var="deleteUrl" value="/ovikh/main/users/delete?id=${user.id}" />
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.name}" /></td>
                <td><c:out value="${user.age}" /></td>
                <td><c:out value="${user.admin}" /></td>
                <td><c:out value="${user.date}" /></td>
                <td><a href="${editUrl}">Edit</a></td>
                <td><a href="${deleteUrl}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <c:url var="mainUrl" value="/ovikh/main/users" />
    <c>
        Return to full list of users. <a href="${mainUrl}">Return</a>
    </c>

</center>

</body>
</html>