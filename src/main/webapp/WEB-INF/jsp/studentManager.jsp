<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- <%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 19/5/2022
  Time: 12:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> -->
<html>

<head>
    <title>Student Manger</title>
</head>

<body>
    <h1>Student Manger</h1>
    <table>
        <tr>
            <td>Student List (${students.size()})</td>
        </tr>
        <tr>
            <td>
                <button onclick=location.replace("${pageContext.request.contextPath}/students/add")>New...</button>
                <button disabled>Delete</button>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <table border="1">
        <thead style="background-color: aqua;">
            <th>Edit</th>
            <th>Selected</th>
            <th>StudentId</th>
            <th>Name</th>
            <th>Birthday</th>
        </thead>
        <tbody>
        <c:forEach items="${students}" var="student">
            <tr>
                <td>
                    <button>Edit</button>
                </td>
                <td align="center">
                    <input type="checkbox">
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/students/${student.id}">${student.studentId}</a>
                </td>
                <td>
                    ${student.name}
                </td>
                <td>
                    <fmt:formatDate value="${student.birthday}" pattern="dd/MM/yyyy" />
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</body>

</html>