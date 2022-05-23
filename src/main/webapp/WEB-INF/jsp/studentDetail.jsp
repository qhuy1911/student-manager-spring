<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 19/5/2022
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Detail</title>
</head>
<body>
    <h1>Student Detail</h1>

    <table>
        <tr>
            <td>
                <strong>StudentID: </strong>
            </td>
            <td>
                ${student.studentId}
            </td>
        </tr>
        <tr>
            <td>
                <strong>Name: </strong>
            </td>
            <td>
                ${student.name}
            </td>
        </tr>
        <tr>
            <td>
                <strong>Male: </strong>
            </td>
            <td>
                ${student.male ? "Male" : "Female"}
            </td>
        </tr>
        <tr>
            <td>
                <strong>Birthday: </strong>
            </td>
            <td>
                <fmt:formatDate value="${student.birthday}" pattern="dd/MM/yyyy" />
            </td>
        </tr>
        <tr>
            <td>
                <strong>Place of birth: </strong>
            </td>
            <td>
                ${student.placeOfBirth}
            </td>
        </tr>
        <tr>
            <td>
                <strong>Address: </strong>
            </td>
            <td>
                ${student.address}
            </td>
        </tr>
        <tr>
            <td>
                <strong>Department: </strong>
            </td>
            <td>
                ${student.depName}
            </td>
        </tr>
        <tr>
            <td>${pageContext.request.contextPath}</td>
        </tr>
        <tr>
            <td>
                <button onclick=location.replace("${pageContext.request.contextPath}/students")>Student List</button>
            </td>
            <td>
                <button onclick=location.replace("${pageContext.request.contextPath}/students/${student.id}/edit")>Edit...</button>
            </td>
        </tr>
    </table>
</body>
</html>
