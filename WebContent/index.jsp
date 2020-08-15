<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
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
			
			<a class="navbar-brand" href="index.jsp"><img src="img/logo.png" alt="logo" class="img-fluid" height="30" width="41"></a>
			<div>
				<ol class="navbar-nav mr-auto">
					<li class="nav-item active"><h2><a class="nav-link" href="index.jsp">Welcome to Parkolas!!</a></h2></li>
				</ol>
			</div>
			<span class="navbar-text">
				<a id="loginButton" data-toggle="modal" data-target="#loginModal" href="">
					<span class="fa fa-sign-in"></span> Log in/ Register
				</a>
			</span>
 		</div>
	</nav>
	<div class="modal fade" id="loginModal" role="dialog">
		<div class="modal-dialog modal-lg" role="content">
		  	<div class="modal-content">
				<div class="modal-header">
			  		<h5 class="modal-title">Login</h5>
			  		<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action="login" method="POST">
					<div class="modal-body">
						<div class="row">
							<div class="form-group col-sm-4">
								<input type="email" placeholder="Username" id="username" name="username" class="form-control">
							</div>
							<div class="form-group col-sm-4">
								<input type="password" placeholder="Password" id="password" name="pass" class="form-control">
							</div>
							<div class="form-group col-sm-4 form-check">
								<input type="checkbox" id="remme" name="remme" class="form-check-input">
								<label for="remme" class="form-check-label"><strong>Remember me</strong></label>
							</div>
						</div>
					</div>
					<div class="modal-footer">
                    	<input type="submit" class="btn btn-primary" name="query" value="Login"/>
                    	<input data-toggle="modal" data-target="#registerModal" type="button" class="btn btn-success" name="query" value="Register"/>
						<button data-dismiss="modal" class="btn btn-secondary">Cancel</button>
					</div>
				</form>
		  	</div>
		</div>
    </div>
    <div class="modal fade" id="registerModal" role="dialog">
		<div class="modal-dialog modal-lg" role="content">
		  	<div class="modal-content">
				<div class="modal-header">
			  		<h5 class="modal-title">Register</h5>
			  		<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action="login" method="POST">
					<div class="modal-body">
						<div class="row">
							<div class="form-group col-sm-4">
								<input type="email" placeholder="Email" id="user" name="username" class="form-control">
							</div>
							<div class="form-group col-sm-4">
								<input type="text" placeholder="Name" id="name" name="name" class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="form-group col-sm-4">
								<input type="tel" id="phno" name="phno" class="form-control" placeholder="Mobile number">
							</div>
							<div class="form-group col-sm-4">
								<input type="password" placeholder="Password" id="pass" name="pass" class="form-control">
							</div>
						</div>
					</div>
					<div class="modal-footer">
                        <input type="submit" class="btn btn-success" name="query" value="Register"/>
                        <input data-toggle="modal" data-target="#loginModal" type="button" class="btn btn-primary" name="query" value="Login"/>
						<button data-dismiss="modal" class="btn btn-secondary">Cancel</button>
					</div>
				</form>
		  	</div>
		</div>
	</div>	
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
					<a href="#">Home</a>			
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
		${request}.getAttribute("state");
	</footer>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script type="text/javascript"> 
		function alertName(){	
			var Msg = '<%=(String)request.getAttribute("state")%>';
			console.log(Msg);
			window.alert(Msg);
		}
	</script>
	<script type="text/javascript"> window.onload = alertName; </script>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>