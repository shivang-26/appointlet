<%-- 
    Document   : approve
    Created on : 24-Apr-2023, 5:36:18 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <input type="email" id="email" placeholder="Email">    
    </body>
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script>
        Email.send({
            Host : "smtp.elasticemail.com",
            Username : "shivaang.vats@gmail.com",
            Password : "38F85B566B6CB62C8DFFDA2FDD3031328C71",
            To : document.getElementById("email"),
            From : "shivaang.vats@gmail.com",
            Subject : "Approved",
            Body : "Appointment approved"
        }).then(
          message => alert(message)
        );
    </script>
</html>
