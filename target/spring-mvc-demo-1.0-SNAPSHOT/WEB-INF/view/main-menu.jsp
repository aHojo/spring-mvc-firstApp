<%--
  Created by IntelliJ IDEA.
  User: hojno
  Date: 2/17/2022
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Main Menu</title>
<%--    <link rel="stylesheet" type="text/css"--%>
<%--          href="${pageContext.request.contextPath}/resources/css/style.css">--%>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/resources/css/style.css"/>" />

<%--    <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>--%>
    <script src="<c:url value="/resources/js/script.js"/>"></script>
</head>
<body>
  <h1>Spring MVC Demo - Home Page</h1>
  <hr>

  <a href="hello/showForm">Hello World Form</a>
  <br>
  <a href="player/showForm">Student Form</a>
  <br>
  <a href="customer/showForm">Customer Form</a>
</body>
</html>
