<%-- 
    Document   : admin_logout
    Created on : 21-Apr-2023, 6:23:41 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <%
        response.sendRedirect("admin_login.html");
        %>
    </body>
</html>
