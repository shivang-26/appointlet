<%-- 
    Document   : delete_doctor
    Created on : 22-Apr-2023, 12:11:13 pm
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String fname=request.getParameter("fname");
         
        
        
         try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
        Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery("select * from doctors_info where fname='"+fname+"'");
        if(rs.first()){
        st.execute("delete from doctors_info where fname='"+fname+"'");
        response.sendRedirect("doctors.jsp");
        }
        }
        catch(Exception ex)
        {
        out.println(ex.getMessage());
        }
        %>
    </body>
</html>
