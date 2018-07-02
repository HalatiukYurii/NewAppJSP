<%--
  Created by IntelliJ IDEA.
  User: RENT
  Date: 2018-07-02
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String attributeName = request.getParameter("attributeName");
    String attributeValue = request.getParameter("attributeValue");

    session.setAttribute(attributeName,attributeValue);

    response.sendRedirect("aplikacja.jsp");
%>
</body>
</html>
