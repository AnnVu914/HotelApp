<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Room</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Rubik:300,400,700"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<!-- Theme Style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style1.css">

</head>
<body>

	<header role="banner">

		<nav class="navbar navbar-expand-md navbar-dark bg-light">
			<div class="container">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/landing/home">LuxuryHotel</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarsExample05" aria-controls="navbarsExample05"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse navbar-light"
					id="navbarsExample05">
					<ul class="navbar-nav ml-auto pl-lg-5 pl-0">
						<li class="nav-item"><a class="nav-link active"
							href="${pageContext.request.contextPath}/landing/home">Home</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/landing/rooms">Rooms</a>

						</li>
						<li class="nav-item"><a class="nav-link"
							href="restaurant.html">Restaurant</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/landing/about">About</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/landing/contact">Contact</a>
						</li>

						<li class="nav-item ">
							<%-- <c:url var="newCustomerLink" value="/customer/new"> 
				</c:url> --%> <a class="nav-link"
							href="${pageContext.request.contextPath}/landing/login"> <span
								class="fa fa-user fa-xs"> Login</span>
						</a>
						</li>
					</ul>

				</div>
			</div>
		</nav>
	</header>
	<!-- END header -->



	<section class="site-hero site-hero-innerpage overlay"
		data-stellar-background-ratio="0.5"
		style="background-image: url(${pageContext.request.contextPath}/resources/images/big_image_1.jpg);">
		<div class="container">
			<div
				class="row align-items-center site-hero-inner justify-content-center">
				<div class="col-md-12 text-center">

					<div class="mb-5 element-animate">
						<h1>Our Rooms</h1>
						<p>Discover our world's #1 Luxury Room For VIP.</p>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- END section -->


	<section class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 form-group">
					<form:form action="add-room" modelAttribute="room" method="put">

						<div class="row">
							<div class="col-md-12 form-group">
								<h2 class="mb-5">New Room Form</h2>

								<div class="row">
									<div class="col-md-3 form-group">
										<label for="typeName">Type Name</label>
										<div style="position: relative;">
											<input name='typeName' type='text' value='${typeName}'
												class="form-control" id='typeName' disabled />
										</div>
									</div>
									
									<div class="col-md-3 form-group">
										<label for="price">Price</label>
										<div style="position: relative;">
											<input name='price' type='number' value='${price}'
												class="form-control" id='price' disabled />
										</div>

									</div>
									
									<div class="col-md-3 form-group">
										<label for="floor">Floor</label>
										<div style="position: relative;">
											<input name="floor" type='number'
												class="form-control" id='floor' />
										</div>
									</div>
									
									<div class="col-md-3 form-group">
										<label for="numberOfBed">Number of Beds</label>
										<div style="position: relative;">
											<input name="numberOfBed" type='number'
												class="form-control" id='numberOfBed' />
										</div>

									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12 form-group" align="right">
								<input type="submit" value="Submit" class="btn btn-primary">
								
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</section>


	<section class="section-cover" data-stellar-background-ratio="0.5"
		style="background-image: url(${pageContext.request.contextPath}/resources/images/img_5.jpg);">
		<div class="container">
			<div class="row justify-content-center align-items-center intro">
				<div class="col-md-9 text-center element-animate">
					<h2>Relax and Enjoy your Holiday</h2>
					<p class="lead mb-5">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Architecto quidem tempore expedita facere
						facilis, dolores!</p>
					<div class="btn-play-wrap">
						<a href="https://vimeo.com/channels/staffpicks/93951774"
							class="btn-play popup-vimeo "><span class="ion-ios-play"></span></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->

	<footer class="site-footer">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-4">
					<h3>Phone Support</h3>
					<p>24/7 Call us now.</p>
					<p class="lead">
						<a href="tel://">+ 1 332 3093 323</a>
					</p>
				</div>
				<div class="col-md-4">
					<h3>Connect With Us</h3>
					<p>We are socialized. Follow us</p>
					<p>
						<a href="#" class="pl-0 p-3"><span class="fa fa-facebook"></span></a>
						<a href="#" class="p-3"><span class="fa fa-twitter"></span></a> <a
							href="#" class="p-3"><span class="fa fa-instagram"></span></a> <a
							href="#" class="p-3"><span class="fa fa-vimeo"></span></a> <a
							href="#" class="p-3"><span class="fa fa-youtube-play"></span></a>
					</p>
				</div>
				<div class="col-md-4">
					<h3>Connect With Us</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Maxime, odio.</p>
					<form action="#" class="subscribe">
						<div class="form-group">
							<button type="submit">
								<span class="ion-ios-arrow-thin-right"></span>
							</button>
							<input type="email" class="form-control"
								placeholder="Enter email">
						</div>

					</form>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-7 text-center">
					&copy;
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</div>
			</div>
		</div>
	</footer>
	<!-- END footer -->

	<!-- loader -->
	<div id="loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#f4b214" /></svg>
	</div>

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.0.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>





</body>
</html>