<%--
  Created by IntelliJ IDEA.
  User: hojno
  Date: 2/21/2022
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Registration Confirmation</title>
</head>
<body>

    The customer is confirmed: ${customer.firstName} ${customer.lastName}
    <br><br>
    Free Passes: ${customer.freePasses}
    <br><br>
    Post Code: ${customer.postalCode}
    <br><br>
    Course Code: ${customer.courseCode}
    <br><br>
</body>
</html>
