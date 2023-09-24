<%-- 
    Document   : admindash
    Created on : 21-Apr-2023, 10:32:12 pm
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
<title>Admin Dashboard</title>
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

				
				<li class="nav-item"><a class="nav-link active" href="add_doctor.html">ADD DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active" href="doctors.jsp">VIEW DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active" href="all_patients.jsp">PATIENT</a></li>


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

	

	<div class="container p-5">
		<p class="text-center fs-3">Admin Dashboard</p>
		
		
		
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
                                                    Doctor <br><%
                                                        Class.forName("com.mysql.cj.jdbc.Driver");
                                                        Connection connec=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
                                                        Statement stmt=connec.createStatement();
                                                        ResultSet result=stmt.executeQuery("select count(*) from doctors_info");
                                                        result.next();
                                                        int count2 = result.getInt(1);
                                                        out.println(count2);                                                       
                                                        %>
						</p>
					</div>
				</div>
			</div>



			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
                                                    User <br><%
                                                        Class.forName("com.mysql.cj.jdbc.Driver");
                                                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
                                                        Statement st=con.createStatement();
                                                        ResultSet rs=st.executeQuery("select count(*) from user_info");
                                                        rs.next();
                                                        int count = rs.getInt(1);
                                                        out.println(count);                                                       
                                                        %>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
                                                    Total Appointment <br><%
                                                    
                                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                                        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointlet","root","!shivang@#202##");
                                                        Statement stm=conn.createStatement();
                                                        ResultSet rse=stm.executeQuery("select count(*) from app_details");
                                                        rse.next();
                                                        int count1 = rse.getInt(1);
                                                        out.println(count1); 
                                                    %> 
						</p>
					</div>
				</div>
			</div>

			

		</div>
	</div>



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../addSpecialist" method="post">

						<div class="form-group">
							<label>Enter Specialist Name</label> <input type="text"
								name="specName" class="form-control">
						</div>
						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>


</body>
</html>
