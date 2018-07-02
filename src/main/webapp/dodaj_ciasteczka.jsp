<%--
  Created by IntelliJ IDEA.
  User: RENT
  Date: 2018-07-01
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj ciasteczka</title>
</head>
<body>

<%
    String name = (request.getParameter("name"));
    String value = (request.getParameter("value"));
    Integer age = Integer.parseInt(request.getParameter("age"));

    Cookie cookie = new Cookie(name, value);
    cookie.setMaxAge(age);
    response.addCookie(cookie);

    response.sendRedirect("lista_ciasteczek.jsp");
%>


</body>
</html>
