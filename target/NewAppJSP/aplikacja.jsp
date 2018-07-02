<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%--
  Created by IntelliJ IDEA.
  User: RENT
  Date: 2018-07-01
  Time: 09:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <%
        Enumeration headersNames = request.getHeaderNames();
        while (headersNames.hasMoreElements()) {
            String key = (String) headersNames.nextElement();
            String value = request.getHeader(key);
            out.println("<tr><th>" + key + "</th><th>" + value + "</th></tr>");
        }
%>
</table>
<h1>Cookies:</h1>
<table>
    <%

        Cookie [] cookies = request.getCookies();
        for (Cookie c: cookies) {
            out.println("<tr><th>"+c.getName()+"</th><th>"+c.getValue()+"</th></tr>");

        }

        %>
</table>
<h1>Session attributes (id: <%= session.getId() %>):</h1>
<table>
<%
    Enumeration sessionAttributeNames = session.getAttributeNames();
    while (sessionAttributeNames.hasMoreElements()){
        String key = (String) sessionAttributeNames.nextElement();
        Object value = session.getAttribute(key);
        out.print("<tr><th>" + key + "</th><th>" + value + "</th></tr>");
    }
%>
</table>
<form action="add_session_attribute.jsp" method="post">

    <label for="attributeName">Session attribute name</label>
    <input type="text" id="attributeName"name="attributeName"/><br/>

    <label for="attributeValue">Session attribute value</label>
    <input type="text" id="attributeValue" name="attributeValue"/><br/>

    <input type="submit" value="Add"/>
</form>



<form action="dodaj_ciasteczka.jsp"  method="post">


    <label for="name">Name</label>
    <input type="text" name="name">
    </br>

    <label for="value">Values</label>
    <input type="text" name="value">
    </br>

    <label for="age">Max Age</label>
    <input type="text" name="age">
    </br>


    <input type="submit" name="Dodaj" value="Dodaj">


</form>


</body>
</html>
