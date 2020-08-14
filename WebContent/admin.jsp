<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
	<link rel="stylesheet" href="css/styles.css">
     <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
     <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css">
     <link rel="stylesheet" href="node_modules/bootstrap-social/bootstrap-social.css">
     
<title>Parkolas</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark fixed-top">
		<div class="container">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#Navbar">
                <span class="navbar-toggler-icon"></span>
            </button>
			<a class="navbar-brand" href="index.jsp"><img src="img/logo.png" alt="logo" class="img-fluid" height="30" width="41"></a>
			<div class="collapse navbar-collapse" id="Navbar">
				<ol class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="index2.jsp"><span class="fa fa-home fa-lg"></span>Home</a></li>
					<li class="nav-item active"><a class="nav-link" href="admin.jsp"><span class="fa  fa-edit fa-lg"></span>Admin Console</a></li>
					<li class="nav-item"><a class="nav-link"href="ContactUs.html"><span class="fa fa-address-card fa-lg"></span>Contact Us</a></li>
				</ol>
			</div>
 		</div>
	</nav>
	<br><br><br>
	<div class="container">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
  			<li class="nav-item" role="presentation">
    			<a class="nav-link active" data-toggle="tab" href="#attendant" role="tab" >Edit Attendant</a>
  			</li>
  			<li class="nav-item" role="presentation">
    			<a class="nav-link" data-toggle="tab" href="#slots" role="tab" >Edit Slots</a>
  			</li>
  			<li class="nav-item" role="presentation">
    			<a class="nav-link" data-toggle="tab" href="#price" role="tab" >Edit Prices</a>
  			</li>
		</ul>
		<div class="tab-content" id="myTabContent">
  			<div class="tab-pane fade show active" id="attendant" role="tabpanel">
  				<div class="row">
  					<form id="addatten" action="AddAttendant" method="POST" class="col-12 col-sm-7">
  						<div class="row form-group">
  							<label for="email" class="col-3 col-sm-2 col-form-label"><span class="fa fa-user-plus"></span><b> Add</b></label>
  							<div class="col-12 col-sm-5">
  								<input type="email" id="email" name="email" placeholder="Enter email id" class="form-control">
  							</div>
  							<div class="col-12 col-sm-5">
  								<input type="text" id="name" name="name" placeholder="Enter name" class="form-control">
  							</div>
  						</div>
  						<div class="row form-group">
  							<div class="col-12 col-sm-5 offset-sm-2">
  								<input type="password" id="pass" name="pass" placeholder="Set password" class="form-control">
  							</div>
  							<div class="col-12 col-sm-5">
  								<input type="number" id="age" name="age" min="20" max="80" placeholder="Enter age" class="form-control">
  							</div>
  						</div>
  						<div class="row form-group">
  							<div class="col-12 col-sm-5 offset-sm-2">
  								<input type="tel" id="phno" name="phno" placeholder="Enter phno" class="form-control">
  							</div>
  							<div class="col-12 col-sm-5">
  								<button class="btn btn-primary" type="submit">Add the attendant</button>
  							</div>
  						</div>
  					</form>
  					<br><br>
  					<form id="removeatten" action="rematten" method="GET" class="col-12 col-sm-5">
  						<div class="row form-group">
  							<label for="removeattendant" class="col-3 col-form-label offset-sm-1"><span class="fa fa-user-times"></span><b>Remove</b></label>
  							<div class="col-8">
  								<input type="email" id="removeattendant" name="demail" placeholder="Enter email id" class="form-control">
  							</div>
  						</div>
  						<div class="row form-group">
  							<div class="col offset-sm-4">
  								<button class="btn btn-primary" type="submit">Remove the attendant</button>
  							</div>
  						</div>
  					</form>	
  				</div>	
  				<br>		
				<div id="attendantsList"></div>
  			</div>
  			<div class="tab-pane fade" id="slots" role="tabpanel" ></div>
  			<div class="tab-pane fade" id="price" role="tabpanel" ></div>
		</div>
	</div>
	<footer>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-5 col-sm-3">
					<b>Links</b><br>
					<a href="index2.jsp">Home</a><br>
					<a href="admin.jsp">Admin Console</a><br>
					<a href="ContactUs.html">Contact Us</a>				
				</div>
				<div class="col-5 col-sm-3 offset-1">
					<b>Contact Us</b><br>
					<span class="fa fa-home fa-sm"></span>
					Plot no.6,Near Rajiv Gandhi Airport<br>Shamshabad, Hyderabad<br>Telangana<br>500409<br>
					<span class="fa fa-phone"></span>+919182660664<br>
					<span class="fa fa-envelope"></span><a href="mailto:sushmareddys2312@gmail.com">sushmareddys2312@gmail.com</a>
				</div>
				<div class="col-11 col-sm-4 offset-1">
					<b>Follow Us</b><br>
					<a class="btn btn-social-icon btn-google" href="http://google.com/+"><i class="fa fa-google-plus"></i></a>
                    <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook"></i></a>
                    <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin"></i></a>
                    <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter"></i></a>
                    <a class="btn btn-social-icon btn-google" href="http://youtube.com/"><i class="fa fa-youtube"></i></a>
                    <a class="btn btn-social-icon" href="mailto:"><i class="fa fa-envelope-o"></i></a>                
				</div>
			</div>
			<br>
			<div class="row justify-content-center">
                 Copyright 2020 &nbsp;<b> Parkolas</b>&nbsp;All Rights Reserved
			</div>
		</div>
	</footer>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>