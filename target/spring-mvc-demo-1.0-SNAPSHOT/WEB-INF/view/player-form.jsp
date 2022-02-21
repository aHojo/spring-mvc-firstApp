<%--
  Created by IntelliJ IDEA.
  User: hojno
  Date: 2/18/2022
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Need to import this to use the tags--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Player Registration Form</title>
</head>
<body>

    <form:form action="processForm" modelAttribute="player">
      First Name: <form:input path="firstName" /> <%--  This calls the getter on our esport class--%>
        <br><br>
        Last Name: <form:input path="lastName" /> <%--  This calls the getter on our esport class--%>
        <br><br>

        Country:

        <form:select path="country">
            <form:options items="${player.countryOptions}" />
        </form:select>

        <br><br>
        Favorite Language:
        Java <form:radiobutton path="favoriteLanguage" value="Java"/>
        C# <form:radiobutton path="favoriteLanguage" value="C#"/>
        C++ <form:radiobutton path="favoriteLanguage" value="C++"/>
        Python <form:radiobutton path="favoriteLanguage" value="Python"/>


        <br><br>
        <input type="submit" value="submit" />
        <br><br>
    </form:form>

</body>
</html>
