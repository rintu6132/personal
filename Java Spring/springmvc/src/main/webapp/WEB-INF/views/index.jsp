<%@ page import="java.util.List" %>
<html>
<body>
<h2>Hello World!</h2>
<h2>this is home page</h2>
<%
        String name=(String) request.getAttribute("name");
        Integer id=(Integer) request.getAttribute("id");
        List<String> friends=(List<String>) request.getAttribute("f");
%>
<h2>Name is <%=name%></h2>
<h2>Id is <%=id%></h2>
<% for(String s:friends) { %>
<h2><%=s%></h2>
<%}%>
</body>
</html>