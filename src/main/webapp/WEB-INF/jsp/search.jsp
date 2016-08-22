<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search by name</title>
</head>
<body>
<center>
    <h1>Search by Name</h1>
    <c:url var="saveUrl" value="/ovikh//main/users/search" />
    <form:form modelAttribute="userSearch" method="POST" action="${saveUrl}">
        <table>
            <tr>
                <td><form:label path="name">Type Name:</form:label></td>
                <td><form:input path="name"/></td>
            </tr>
        </table>
        <input type="submit" value="Save" />
    </form:form>

</center>
</body>
</html>