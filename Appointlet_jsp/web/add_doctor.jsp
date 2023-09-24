<%-- 
    Document   : add_doctor
    Created on : 22-Apr-2023, 1:02:09 am
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Statement" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Doctor</title>
    </head>
    <body>
        <%
        String fname=request.getParameter("fname");
        String dob=request.getParameter("dob");
        String qualification=request.getParameter("qualification");
        String specialist=request.getParameter("specialist");
        String email=request.getParameter("email");
        String mob_no=request.getParameter("mob_no");
        String password=request.getParameter("password");
        
         try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
        Statement st=conn.createStatement();
        st.execute("insert into doctors_info values('"+fname+"','"+dob+"','"+qualification+"','"+specialist+"','"+email+"','"+mob_no+"','"+password+"')");
        response.sendRedirect("add_doctor.html");
        }
        catch(Exception ex)
        {
        out.println(ex.getMessage());
        }
        
        
        %>
    </body>
</html>
