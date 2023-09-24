<%-- 
    Document   : doctors
    Created on : 22-Apr-2023, 12:05:59 am
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
<title>View Doctors</title>
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
				<li class="nav-item"><a class="nav-link active" href="add_doctor.html">Add Doctor</a></li>
				
				<li class="nav-item"><a class="nav-link active" href="all_patients.jsp">Patient</a></li>

			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="admin_logout.jsp">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>
	<div class="container-fluid p-3">
		<div class="row">


			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Doctor Details</p>
						
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<% 
                                                                
                                                                
                                                                try{
                                                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                                                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
                                                                    Statement st=con.createStatement();
                                                                    ResultSet rs=st.executeQuery("Select * from doctors_info");
                                                                    while(rs.next()){
                                                                    out.print("<tr>");
                                                                    String fname=rs.getString(1);
                                                                    out.print("<td>"+fname+"</td>");
                                                                    out.print("<td>"+rs.getString(2)+"</td>");
                                                                    out.print("<td>"+rs.getString(3)+"</td>");
                                                                    out.print("<td>"+rs.getString(4)+"</td>");
                                                                    out.print("<td>"+rs.getString(5)+"</td>");
                                                                    out.print("<td>"+rs.getString(6)+"</td>");
                                                                    out.print("<td><form action=delete_doctor.jsp><input type=hidden value='"+fname+"' name=\"fname\"/><input type=submit value="+"Delete"+" name=submit/></form>");
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
