<%-- 
    Document   : sucessfull
    Created on : 25-Apr-2023, 6:07:36 am
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <title>User </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
				
                                <li class="nav-item">
                                <li><a class="nav-link active" aria-current="page" href="userdash.jsp">Register New</a></li>
                
			</ul>
                        


				<div class="button" id="bt">
					<a href="user_logout.jsp" class="col-md-6 offset-md-3 btn btn-success" id="bt1">Logout</a>
							
				</div>
			
		</div>
	</div>
</nav>
        
        
        
        
        
    
        <div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
                                            <p class="text-center fs-3"><font color="red">You have successfully booked your appointment, you will receive an email on registered email address!   </p>
						
						
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
