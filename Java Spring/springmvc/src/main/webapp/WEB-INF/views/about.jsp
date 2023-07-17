<%--
  Created by IntelliJ IDEA.
  User: ri2kumar
  Date: 4/6/2023
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>this is about</h2>
<%
    String name=(String) request.getAttribute("name");
    Integer  id=(Integer) request.getAttribute("id");
%>
<h2><%=name%></h2>
<h2><%=id%></h2>
</body>
</html>
