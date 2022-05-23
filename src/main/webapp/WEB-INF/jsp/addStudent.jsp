<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 19/5/2022
  Time: 7:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new student</title>
</head>
<body>
    <h1>${message}</h1>

    <form:form action="${pageContext.request.contextPath}/students/add" method="post" modelAttribute="student">
        <table>
            <tr>
                <td>
                    <form:label path="studentId">*StudentId:</form:label>
                </td>
                <td>
                    <form:input type="text" path="studentId"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="name">*Name:</form:label>
                </td>
                <td>
                    <form:input type="text" path="name" />
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="male">*Male:</form:label>
                </td>
                <td>
                    <form:checkbox path="male"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="birthday">Birthday:</form:label>
                </td>
                <td>
                    <form:input type="text" path="birthday"/> dd/mm/yyyy
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="placeOfBirth">Place of birth:</form:label>
                </td>
                <td>
                    <form:input type="text" path="placeOfBirth"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="address">placeOfBirth</form:label>
                </td>
                <td>
                    <form:input type="text" path="address"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="depName">Department:</form:label>
                </td>
                <td>
                    <form:select path="depName">
                        <form:option value="Anh văn" label="Anh văn" />
                        <form:option value="Kinh tế" label="Kinh tế"/>
                        <form:option value="Hóa học" label="Hóa học"/>
                        <form:option value="Sinh vật học" label="Sinh vật học"/>
                        <form:option value="Tin học" label="Tin học"/>
                        <form:option value="Vật lý" label="Vật lý"/>
                    </form:select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <input type="submit" value="Submit" name="action" />
                    <button onclick=location.replace("${pageContext.request.contextPath}/students")>Cancel</button>
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>
