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
			<a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo" class="img-fluid" height="30" width="41"></a>
			<div class="collapse navbar-collapse" id="Navbar">
				<ol class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="index1.jsp"><span class="fa fa-home fa-lg"></span>Home</a></li>
					<li class="nav-item"><a class="nav-link" href="bookspot.jsp"><span class="fa fa-shopping-bag fa-lg"></span>Book a spot</a></li>
					<li class="nav-item active"><a class="nav-link"href="ContactUs.html"><span class="fa fa-address-card fa-lg"></span>Contact Us</a></li>
					<li class="nav-item"><a class="nav-link" href="MyAccount.jsp"><span class="fa fa-server fa-lg"></span>My Account</a></li>
				</ol>
			</div>
 		</div>
	</nav>
	<header class="jumbotron">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-sm-10">
                    <h2>Parkolás</h2>
					<p>We manage large areas of our parkinglots spread across India. This is our automated system enabling hassle free bookings and checkouts.</p>
				</div>
				<div>
					<img src="img/logo.png" height="120" width="100">
				</div>
			</div>
		</div>
    </header>
    <div class="container">
        <div class="row" style="margin: -32px auto;">
            <ol class="breadcrumb col-12">
                <li class="breadcrumb-item"><a href="/index.jsp">Home</a></li>
                <li class="breadcrumb-item active">Contact Us</li>
            </ol>
        </div>
        <div class="row row-content">
            <form class="col-12 col-sm-7">
                <div class="row form-group">
                    <label for="name" class="col-4 col-form-label">Full Name</label>
                    <div class="col-8">
                        <input type="text" id="name" name="name" class="form-control" placeholder="Full name">
                    </div>
                </div>
                <div class="row form-group">
                    <label for="email" class="col-4 col-form-label">Email ID</label>
                    <div class="col-8">
                        <input type="email" id="email" name="email" class="form-control" placeholder="Email ID">
                    </div>
                </div>
                <div class="row form-group">
                    <label for="code" class="col-4 col-form-label">Phone number</label>
                    <div class="col-3">
                        <input type="tel" id="code" name="code" class="form-control" placeholder="Country code">
                    </div>
                    <div class="col-5">
                        <input type="tel" id="tel" name="tel" class="form-control" placeholder="Phone number">
                    </div>
                </div>
                <div class="row form-group">
                    <label for="feedback" class="col-4 col-form-label">Feedback</label>
                    <div class="col-8">
                        <textarea class="form-control" rows=12 id="feedback" name="feedback" placeholder="Enter your feedback"></textarea>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="offset-4 col">
                        <button type="submit" class="btn btn-primary">
                            Submit feedback
                        </button>
                    </div>
                </div>
            </form>
            <div class="col-12 col-sm-4 offset-1">
                <b>Address</b><br>
                <span class="fa fa-home fa-sm"></span>
                Plot no.6,Near Rajiv Gandhi Airport<br>Shamshabad, Hyderabad<br>Telangana<br>500409<br>
                <span class="fa fa-phone"></span>+919182660664<br>
                <span class="fa fa-envelope"></span><a href="mailto:sushmareddys2312@gmail.com">sushmareddys2312@gmail.com</a><br>
                <i class="fa fa-location-arrow"></i><a target=”_blank” href="https://www.google.co.in/maps/dir//Shamshabad,+Hyderabad,+Telangana+501218/@17.2464429,78.4004423,14z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3bcbbc728b73acc3:0x1d4765995d9ebbc!2m2!1d78.4095822!2d17.2475978?hl=en&authuser=0">
                Link to Map
                </a>
            </div>          
        </div>
    </div>
	<footer>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-5 col-sm-3">
					<b>Links</b><br>
					<a href="index1.jsp">Home</a><br>
					<a href="#">ContactUs</a><br>
					<a href="MyAccount.jsp"><%= session.getAttribute("name") %></a>				
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
				© Copyright 2020 &nbsp;<b> Parkolas</b>&nbsp;All Rights Reserved
			</div>
		</div>
	</footer>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	</script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>