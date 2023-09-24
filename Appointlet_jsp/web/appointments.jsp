<%-- 
    Document   : appointments
    Created on : 21-Apr-2023, 10:24:55 pm
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
<meta charset="ISO-8859-1">
<title>Appointment Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-info">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.html"><i class="fa-solid fa-calendar-check"></i> APPOINTLET</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				
				<li class="nav-item"><a class="nav-link active" href="admindash.jsp">Home</a></li>
				
			</ul>

			<div class="button" id="bt">
					<a href="user_logout.jsp" class="col-md-6 offset-md-3 btn btn-success" id="bt1">Logout</a>
							
				</div>
		</div>
	</div>
</nav>
	<div class="container-fluid p-3">
		<div class="row">


			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Appointment Details</p>
						
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Date</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Disease</th>
                                                                        <th scope="col">Doctor</th>
                                                                        <th scope="col">Cancel</th>
                                                                        
                                                                        
								</tr>
							</thead>
							<tbody>
								<% 
                                                                
                                                                try{
                                                                    String email=request.getParameter("email");
                                                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                                                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
                                                                    Statement st=con.createStatement();
                                                                    ResultSet rs=st.executeQuery("Select * from app_details where email='"+email+"' ");
                                                                    while(rs.next()){
                                                                    
                                                                    
                                                                   
                                                                    
                                                                    
                                                                    out.print("<tr>");                                                                    
                                                                    out.print("<td>"+rs.getString(1)+"</td>");
                                                                    out.print("<td>"+rs.getString(2)+"</td>");
                                                                    out.print("<td>"+rs.getString(3)+"</td>");
                                                                    out.print("<td>"+rs.getString(4)+"</td>");
                                                                    out.print("<td>"+rs.getString(5)+"</td>");
                                                                    out.print("<td>"+rs.getString(6)+"</td>");
                                                                    out.print("<td>"+rs.getString(7)+"</td>");
                                                                    out.print("<td>"+rs.getString(8)+"</td>");
                                                                    out.print("<td><form action=delete_app.jsp><input type=hidden value='"+email+"' name=\"email\"/><input type=submit value="+"Cancel Appointment"+" name=submit/></form>");
                                                                    out.print("</tr>");
                                                                    }
                                                                    
                                                                    }
                                                                    
                                                                    
                                                                    
                                                                    catch(Exception ex)
                                                                    {
                                                                    out.println(ex.getMessage());
                                                                    }
								
								%>
								



							</tbody>
						</table>

					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
<style>
    
    #bt1{
        padding: 0 0;
        padding-bottom: 1px;
        padding-top: 0px;
        text-align: center;
        justify-content: center;
        width: 70px;
        heigth:30px;
        margin-left: -30px;
        color: #000;
        background: #fff;
        font-family: consolas;
        border: 1px solid black;
    }
   
</style>

