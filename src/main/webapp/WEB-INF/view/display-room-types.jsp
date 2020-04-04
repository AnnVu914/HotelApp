<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/landingModify.css">

</head>
<body>

	<header role="banner">

    <nav class="navbar navbar-expand-md navbar-dark bg-light">
      <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">LuxuryHotel</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05"
          aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse navbar-light" id="navbarsExample05">
          <ul class="navbar-nav ml-auto pl-lg-5 pl-0">
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="${pageContext.request.contextPath}/room">Rooms</a>

            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/restaurant/restaurant">Restaurant</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/contact">Contact</a>
            </li>
         	
         	<!-- Not visible when user logged in -->           
            <security:authorize access="!isAuthenticated()">
              <a class="nav-link" href="${pageContext.request.contextPath}/loginPage">
                <span class="fa fa-user fa-xs"> Login</span>
              </a>
             </security:authorize>
             
             <!-- Only visible when user logged in -->
            <security:authorize access="isAuthenticated()">
            	<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/landing/contact">
              		<span class="fa fa-user fa-xs"> <security:authentication property="principal.username" /></span></a>            	
              	</li>
            	<li class="nav-item">
            		<form:form action="${pageContext.request.contextPath}/logout" method="post">
              			<input class="nav-link sub" type="submit" value="logout"/>
              		</form:form>
            	</li>
            </security:authorize>
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
				<div class="col-md-8">
					<h2 class="mb-5">Rooms</h2>
				</div>
				
					<div class="col-md-4" align="right">
					<security:authorize access="hasRole('ADMIN')">
						<a href="${pageContext.request.contextPath}/room/new-room-type-form" class="btn btn-primary btn-sm"> Add a room type </a>
					</security:authorize>
					</div>
				

				<c:if test="${empty roomTypes}">
    				No room available.
    				
				</c:if>

				<c:if test="${not empty roomTypes}">
					<c:forEach items="${roomTypes}" var="type">
						<div class="col-md-4 mb-4">
							<div class="media d-block room mb-0">
								<figure>
									<img
										src="${pageContext.request.contextPath}/resources/images/img_1.jpg"
										alt="Generic placeholder image" class="img-fluid">
									<div class="overlap-text"></div>
								</figure>
								<div class="media-body">
									<h3 class="mt-0">
										<security:authorize access="hasRole('ADMIN')"><a href="${pageContext.request.contextPath}/room/type/${type.typeName}"></security:authorize>
											${type.typeName}</a>
									</h3>
									<ul class="room-specs">
										<li><span class="ion-ios-people-outline"></span> 2 Guests</li>
										<li><span class="ion-ios-crop"></span> 22 ft <sup>2</sup></li>
									</ul>
									<p>Nulla vel metus scelerisque ante sollicitudin. Fusce
										condimentum nunc ac nisi vulputate fringilla.</p>
									<p>
									<div class="row">
										<div class="col-md-12">
											<a href="#" class="btn btn-primary btn-md btn-block" > Book now from
												$<c:out value="${type.price}" />
											</a>
										</div>
									</div>
									</p>
									
									<p>
									<security:authorize access="hasRole('ADMIN')">
									<div class="row">
										<div class="col-md-6">
										<a href="#" class="btn btn-primary btn-md btn-block"> Update
											</a>
										</div>
										
										<div class="col-md-6">
										<a href="#" class="btn btn-primary btn-md btn-block"> Delete
											</a>
										</div>
									</div>
									</security:authorize>
									 </p>
									 
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>

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