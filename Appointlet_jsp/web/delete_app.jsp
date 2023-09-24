<%-- 
    Document   : delete_app
    Created on : 25-Apr-2023, 12:32:25 am
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
        <title>Delete</title>
    </head>
    <body>
        <%
         String fname=request.getParameter("fname");
         
        
        
         try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
        Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery("select * from app_details where fname='"+fname+"'");
        if(rs.first()){
        st.execute("delete from app_details where fname='"+fname+"'");
        response.sendRedirect("all_patients.jsp");
        }
        }
        catch(Exception ex)
        {
        out.println(ex.getMessage());
        }
        %>
    </body>
</html>

