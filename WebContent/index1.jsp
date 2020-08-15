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
			<a class="navbar-brand" href="index1.jsp"><img src="img/logo.png" alt="logo" class="img-fluid" height="30" width="41"></a>
			<div class="collapse navbar-collapse" id="Navbar">
				<ol class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="index1.jsp"><span class="fa fa-home fa-lg"></span>Home</a></li>
					<li class="nav-item"><a class="nav-link" href="bookspot.jsp"><span class="fa fa-shopping-bag fa-lg"></span>Book a spot</a></li>
					<li class="nav-item"><a class="nav-link"href="ContactUs.jsp"><span class="fa fa-address-card fa-lg"></span>Contact Us</a></li>
					<li class="nav-item"><a class="nav-link" href="MyAccount.jsp"><span class="fa fa-server fa-lg"></span><%=session.getAttribute("user") %></a></li>
				</ol>
				<ol class="navbar-nav">
					<li class="nav-item active"><a href="index.jsp" class="nav-link">Log Out<span class="fa fa-sign-out"></span></a></li>
				</ol>
			</div>
 		</div>
	</nav>
	<header class="jumbotron">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-sm-10">
                    <h2>Parkolas</h2>
					<p>We manage large areas of our parkinglots spread across India. This is our automated system enabling hassle free bookings and checkouts.</p>
				</div>
				<div>
					<img src="img/logo.png" height="120" width="100">
				</div>
			</div>
		</div>
    </header>
    <div class="container">
        <div class="row row-content align-items-center">
            <div class="col">
                <div id="mycarousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="d-block img-fluid" src="img/parkinglot.jpg" alt="Slide1">
                            <div class="carousel-caption">
                                <h2>Organized parking</h2>
                                <p class="d-none d-sm-block">A well organized parking with efficient usage of space</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid" src="img/parkinglot2.jpg" alt="Slide2">
                            <div class="carousel-caption">
                                <h2>Easy to park</h2>
                                <p class="d-none d-sm-block">Ample space facilitating easy movement of vehicles</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid" src="img/multilevel.jpg" alt="Slide3">
                            <div class="carousel-caption">
                                <h2>Multi-level parking</h2>
                                <p class="d-none d-sm-block">Multilevel parking, upto six levels in a parkinglot. Facility to park any type of vehicle</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid" src="img/truckpark.jpg" alt="Slide4">
                            <div class="carousel-caption">
                                <h2>Large vehicles</h2> 
                                <p class="d-none d-sm-block">Facility to park trucks,buses and jeeps</p>
                            </div>
                        </div>
                    </div>
                    <ol class="carousel-indicators">
                        <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#mycarousel" data-slide-to="1"></li>
                        <li data-target="#mycarousel" data-slide-to="2"></li>
                        <li data-target="#mycarousel" data-slide-to="3"></li>
                    </ol>
                    <a class="carousel-control-prev" href="#mycarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#mycarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                    <button type="button" class="btn btn-danger" id="carouselButton">Stop</button>                  
                </div>
            </div>
        </div>
        <div class="row row-content">
            <div class="col-12">
                <h2>Our Centres</h2>
                <div id="accordion">
                    <div class="card">
                        <div role="tab" class="card-header" id="orghead">
                            <h3 class="mb-0">
                                <a data-toggle="collapse" data-target="#org">
                                    Organized parking <small>,efficient</small>   
                                </a>
                            </h3>
                        </div>
                        <div class="collapse show" id="org" data-parent="#accordion">
                            <div class="card-body">
                                <p class="d-none d-sm-block">A well organized parking with effective usage of space</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div role="tab" class="card-header" id="easyhead">
                            <h3 class="mb-0">
                                <a class="collapsed" data-toggle="collapse" data-target="#easy">
                                    Easy to park <small>,hassle-free</small>
                                </a>
                            </h3>
                        </div>
                        <div class="collapse" id="easy" data-parent="#accordion">  
                            <div class="card-body">
                                <p class="d-none d-sm-block">Ample space facilitating easy movement of vehicles</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div role="tab" class="card-header" id="multihead">
                            <h3 class="mb-0">
                                <a class="collapsed" data-toggle="collapse" data-target="#multi">
                                    Multi-level parking
                                </a>
                            </h3>
                        </div>
                        <div class="collapse" id="multi" data-parent="#accordion">
                            <div class="card-body">
                                <p class="d-none d-sm-block">Multilevel parking, upto <em>six levels</em> in a parkinglot. Facility to park any type of vehicle</p>
                            </div>   
                        </div>
                    </div>
                    <div class="card">
                        <div role="tab" class="card-header" id="largehead">
                            <a class="collapsed" data-toggle="collapse" data-target="#large"><h3 class="mb-0">Large vehicles</h3></a>
                        </div>
                        <div class="collapse" id="large" data-parent="#accordion"> 
                            <div class="card-body">
                                <p class="d-none d-sm-block">Facility to park trucks,buses and jeeps</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<footer>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-5 col-sm-3">
					<b>Links</b><br>
					<a href="#">Home</a><br>
					<a href="bookspot.jsp">Book a spot</a><br>
					<a href="ContactUs.jsp">Contact us</a><br>
					<a href="MyAccount.jsp"><%= session.getAttribute("user") %></a>		
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
		
		<script> 
		function alertName(){
			var Msg = "login successful ";
			var name = '<%=(String)session.getAttribute("user")%>';
			console.log("session"+name);
			if(name.localeCompare(""))name = '<%=(String)request.getAttribute("user")%>';
			
			console.log("request"+name);
			if(name.localeCompare(""))location.replace("index.jsp");
			Msg += name;
			window.alert(Msg);	
		}
		function myFunction() {
			  
		}
		</script>
		<script type="text/javascript"> window.onload = alertName; </script>
	</footer>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>