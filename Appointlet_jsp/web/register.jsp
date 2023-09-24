<%-- 
    Document   : register
    Created on : 17-Apr-2023, 9:55:00 pm
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
        <title>Register User</title>
    </head>
    <body>
        <%
        String fname=request.getParameter("fname");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        
         try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
        Statement st=conn.createStatement();
        
        ResultSet rs=st.executeQuery("Select * from user_info where email='"+email+"'");
        if(rs.next()){
        
        
        request.setAttribute("error", "val");
        response.sendRedirect("usersignup.jsp");
        
        }else{
        st.execute("insert into user_info values('"+fname+"','"+email+"','"+password+"')");
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