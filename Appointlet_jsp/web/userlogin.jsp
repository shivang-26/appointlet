<%-- 
    Document   : userlogin.jsp
    Created on : 21-Apr-2023, 5:10:18 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
    </head>
    <body>
        <%
        
        String email =request.getParameter("email");
        String password=request.getParameter("password");
        session = request.getSession();
        try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("Select * from user_info where email='"+email+"' and password='"+password+"'");
        if(rs.next())
        {
        
        
        
           
           
        response.sendRedirect("userdash.jsp");
        }
        else
        {
            
            response.sendRedirect("userlogin.html");
        }
        }
        catch(Exception ex)
        {
        out.println(ex.getMessage());
        }
        %>
    </body>
</html>
