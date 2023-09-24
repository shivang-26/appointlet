<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <%
            try{
                String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
			session.setAttribute("admin", email);
			response.sendRedirect("admindash.jsp");
		} 
                else {
			session.setAttribute("errorMsg", "invalid email and password");
			response.sendRedirect("admin_login.html");
                        out.println("invalid email and password");
		}

		} catch (Exception e) {
			e.printStackTrace();
		}
        %>
    </body>
</html>

