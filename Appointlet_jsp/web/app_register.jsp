<%-- 
    Document   : app_register
    Created on : 21-Apr-2023, 7:49:55 pm
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
        <title>Appointment Registration</title>
    </head>
    <body>
        <%
        
        String fname=request.getParameter("fname");
        String gender=request.getParameter("gender");
        String age=request.getParameter("age");
        String date=request.getParameter("date");
        String email=request.getParameter("email");
        String ph_no=request.getParameter("ph_no");
        String disease=request.getParameter("disease");
        String doctor=request.getParameter("doctor");
        String address=request.getParameter("address");
       
        
        
         try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
        Statement st=conn.createStatement();
        st.execute("insert into app_details values('"+fname+"','"+gender+"','"+age+"','"+date+"','"+email+"','"+ph_no+"','"+disease+"','"+doctor+"','"+address+"')");
        response.sendRedirect("sucessfull.jsp");
        }
       
        catch(Exception ex)
        {
        out.println(ex.getMessage());
        }
        %>
    </body>
</html>
