<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 19/5/2022
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>
    <h1>${message}</h1>

    <form:form action="${pageContext.request.contextPath}/students/${student.id}/edit" method="post" modelAttribute="student">
        <table>
            <tr>
                <td>
                    <form:label path="studentId">*StudentId:</form:label>
                </td>
                <td>
                    ${student.studentId}
                    <form:input type="hidden" path="studentId"/>
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
                        <form:option value="Anh v??n" label="Anh v??n" />
                        <form:option value="Kinh t???" label="Kinh t???"/>
                        <form:option value="H??a h???c" label="H??a h???c"/>
                        <form:option value="Sinh v???t h???c" label="Sinh v???t h???c"/>
                        <form:option value="Tin h???c" label="Tin h???c"/>
                        <form:option value="V???t l??" label="V???t l??"/>
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
