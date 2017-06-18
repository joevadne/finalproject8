<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database2">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="team8"/>
  <jsp:setProperty property="user" name="database" value="team8"/>
  <jsp:setProperty property="password" name="database" value="NCHUTeam8!"/>
</jsp:useBean>
<%
  request.setCharacterEncoding("UTF-8");
  if((session.getAttribute("c_id") == null) || (session.getAttribute("c_id") == "")){
   response.setHeader("Refresh","1, URL = logout.jsp");}
  database.connectDB();
  database.query("select * from member;");
  ResultSet rs = database.getRS();
  String c_id=(String)session.getAttribute("c_id");
%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Elate &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,400italic,700' rel='stylesheet' type='text/css'>

	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

<link href="vendors/semantic-ui/dist/semantic.css" rel="stylesheet">

	</head>
	<body>
	<header role="banner" id="fh5co-header">
			<div class="container">
				<!-- <div class="row"> -->
			    <nav class="navbar navbar-default">
		        <div class="navbar-header">
		        	<!-- Mobile Toggle Menu Button -->
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
		         <a class="navbar-brand" href="index.html">All U Can Drink</a>
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav ">
		            <li class="active"><a href="#" data-nav-section="home"><span>Home</span></a></li>
		            <li><a href="#" data-nav-section="storelist"><span>Shop List</span></a></li>
		            <li><a href="#" data-nav-section="about"><span>About Us</span></a></li>
		          </ul>
              <ul class="nav navbar-nav navbar-right">
          <li><a href="#" data-nav-section="signup"><span>Join us!</span></a></li>
          <li><button class="ui green basic button" onclick="window.open('logout.jsp','_self')">Logout</button></li>
        </ul>
		        </div>
			    </nav>
			  <!-- </div> -->
		  </div>
	</header>

	<section id="fh5co-home" data-section="home" style="background-image: url(images/bg.jpg);" data-stellar-background-ratio="0.5">
		<div class="gradient"></div>
		<div class="container">
			<div class="text-wrap">
				<div class="text-inner">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<h1 class="to-animate">DRINK</h1>
							<h2 class="to-animate">You can order the drinks you want!</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="slant"></div>
	</section>



		<section id="fh5co-work" data-section="storelist">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">Shop List</h2>
				</div>
			</div>
			<div class="row row-bottom-padded-sm" >
				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="starbucks.jsp" class="fh5co-project-item  to-animate">
						<img src="images/starbucks.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>Starbucks</h2>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="50.jsp" class="fh5co-project-item  to-animate">
						<img src="images/50.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>50嵐</h2>
						</div>
					</a>
				</div>

				<div class="clearfix visible-sm-block"></div>

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="comebuy.jsp" class="fh5co-project-item  to-animate">
						<img src="images/comebuy.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>Comebuy</h2>
						</div>
					</a>
				</div>
			</div>
	</section>

<!-- section about -->
	<section id="fh5co-services" data-section="about">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">About</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="images/moomin.jpg" alt="羅廷君"></figure>
						<h3>羅廷君</h3><br>
						<p><i class="tw flag"></i>I am a very busy woman!!</p>
						<ul class="social social-circle">

							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="https://www.facebook.com/profile.php?id=100000341400790"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="images/pikachu.jpg" alt="陳艾薇"></figure>
						<h3>陳艾薇</h3><br>
						<p><i class="my flag"></i>Time is no enough！！</p>
						<ul class="social social-circle">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="https://www.facebook.com/ai.wei.7902"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="images/nanana.jpg" alt="張尹瑄"></figure>
						<h3>張尹瑄</h3><br>
						<p><i class="id flag"></i>Just Do It~!</p>
						<ul class="social social-circle">
							<li><a href="https://www.twitter.com/jojoevadne"><i class="icon-twitter"></i></a></li>
							<li><a href="https://www.facebook.com/joevitaevadne"><i class="icon-facebook"></i></a></li>
							<li><a href="https://vintagestylexo.tumblr.com"><i class="icon-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>


<!-- funfact section -->
	<!-- <section id="fh5co-counters" style="background-image: url(images/full_image_1.jpg);" data-stellar-background-ratio="0.5">
		<div class="fh5co-overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center to-animate">
					<h2>Fun Facts</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<i class="fh5co-counter-icon icon-briefcase to-animate-2"></i>
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="89" data-speed="5000" data-refresh-interval="50">89</span>
						<span class="fh5co-counter-label">Finished projects</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<i class="fh5co-counter-icon icon-code to-animate-2"></i>
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="2343409" data-speed="5000" data-refresh-interval="50">2343409</span>
						<span class="fh5co-counter-label">Line of codes</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<i class="fh5co-counter-icon icon-cup to-animate-2"></i>
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="1302" data-speed="5000" data-refresh-interval="50">1302</span>
						<span class="fh5co-counter-label">Cup of coffees</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<i class="fh5co-counter-icon icon-people to-animate-2"></i>
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="52" data-speed="5000" data-refresh-interval="50">52</span>
						<span class="fh5co-counter-label">Happy clients</span>
					</div>
				</div>
			</div>
		</div>
	</section> -->

<!-- last section -->
	<section id="fh5co-contact" data-section="signup">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">Join Us!</h2>
					<!-- <div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h3>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</h3>
						</div>
					</div> -->
				</div>
			</div>
			<div class="row row-bottom-padded-md">
				<div class="col-md-6 to-animate">
					<h3>Contact Info</h3>
					<ul class="fh5co-contact-info">
						<li class="fh5co-contact-address ">
							<i class="icon-home"></i>
							國立中興大學
						</li>
						<!-- <li><i class="icon-phone"></i> (123) 465-6789</li> -->
						<li><i class="icon-envelope"></i>allyoucandrink@gmail.com</li>
						<!-- <li><i class="icon-globe"></i> <a href="http://freehtml5.co/" target="_blank">freehtml5.co</a></li> -->
					</ul>
				</div>

				<div class="col-md-6 to-animate">
	          <img src="images/moomin.gif">
					</div>
				</div>

			</div>
		</div>
		<!-- <div id="map" class="to-animate"></div> -->
	</section>


	<footer id="footer" role="contentinfo">
		<a href="#" class="gotop js-gotop"><i class="icon-arrow-up2"></i></a>
		<div class="container">
			<div class="">
				<div class="col-md-12 text-center">
					<p>&copy; All You Can Drink.</p>

				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="social social-circle">
						<li><a href="https://twitter.com/"><i class="icon-twitter"></i></a></li>
						<li><a href="https://www.facebook.com/"><i class="icon-facebook"></i></a></li>
						<li><a href="https://www.youtube.com/"><i class="icon-youtube"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>


	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Counter -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="js/google_map.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	</body>
</html>
