<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: RENT
  Date: 2018-07-01
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista ciastek</title>
</head>
<body>
<%--<table>--%>
<%--<%--%>
    <%--for (Cookie c : request.getCookies()) {--%>
        <%--out.println("<tr><th>" + c.getName() + "</th><th>" + c.getValue() + "</th><th>" + c.getMaxAge() + "</th></tr>");--%>
    <%--}--%>
<%--%>--%>
<%--</table>--%>
<table>
    <%
        HttpSession session1 = request.getSession();
        Enumeration<String> attributeNames = session1.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            String attributeName = attributeNames.nextElement();
            out.println("<tr><th>" + attributeName + "</th><th>" + session1.getAttribute(attributeName) + "</th></th>" );        }
    %>
</table>

</body>
</html>
