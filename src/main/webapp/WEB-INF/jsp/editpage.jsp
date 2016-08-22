<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit user</title>
</head>
<body>
<center>
    <h1>Edit user</h1>
    <c:url var="saveUrl" value="/ovikh/main/users/edit?id=${userAttribute.id}" />
    <form:form modelAttribute="userAttribute" method="POST" action="${saveUrl}">
        <table>
            <tr>
                <td><form:label path="id">ID:</form:label></td>
                <td><form:input path="id" disabled="true"/></td>
            </tr>

            <tr>
                <td><form:label path="name">Name:</form:label></td>
                <td><form:input path="name"/></td>
            </tr>

            <tr>
                <td><form:label path="age">Age:</form:label></td>
                <td><form:input path="age"/></td>
            </tr>

            <tr>
                <td><form:label path="Admin">is Admin:</form:label></td>
                <td><form:select path="Admin">
                    <form:option value="true" label="true"/>
                    <form:option value="false" label="false"/>
                </form:select></td>
            </tr>
        </table>

        <input type="submit" value="Save" />
    </form:form>
</center>
</body>
</html>