<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
@import
	url("https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700")
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-size: 16px;
	font-weight: 300;
	line-height: 23px;
	font-family: "Poppins", sans-serif;
}

ul {
	list-style-type: none;
}

a, a:hover {
	text-decoration: none;
}

body {
	font-family: "Montserrat", sans-serif;
}

body .testimonial {
	padding: 100px 0;
}

body .testimonial .row .tabs {
	all: unset;
	margin-right: 50px;
	display: flex;
	flex-direction: column;
}

body .testimonial .row .tabs li {
	all: unset;
	display: block;
	position: relative;
}

body .testimonial .row .tabs li.active::before {
	position: absolute;
	content: "";
	width: 50px;
	height: 50px;
	background-color: #71b85f;
	border-radius: 50%;
}

body .testimonial .row .tabs li.active::after {
	position: absolute;
	content: "";
	width: 30px;
	height: 30px;
	background-color: #71b85f;
	border-radius: 50%;
}

body .testimonial .row .tabs li:nth-child(1) {
	align-self: flex-end;
}

body .testimonial .row .tabs li:nth-child(1)::before {
	left: 64%;
	bottom: -50px;
}

body .testimonial .row .tabs li:nth-child(1)::after {
	left: 97%;
	bottom: -81px;
}

body .testimonial .row .tabs li:nth-child(1) figure img {
	margin-left: auto;
}

body .testimonial .row .tabs li:nth-child(2) {
	align-self: flex-start;
}

body .testimonial .row .tabs li:nth-child(2)::before {
	right: -65px;
	top: 50%;
}

body .testimonial .row .tabs li:nth-child(2)::after {
	bottom: 101px;
	border-radius: 50%;
	right: -120px;
}

body .testimonial .row .tabs li:nth-child(2) figure img {
	margin-right: auto;
	max-width: 300px;
	width: 100%;
	margin-top: -50px;
}

body .testimonial .row .tabs li:nth-child(3) {
	align-self: flex-end;
}

body .testimonial .row .tabs li:nth-child(3)::before {
	right: -10px;
	top: -66%;
}

body .testimonial .row .tabs li:nth-child(3)::after {
	top: -130px;
	border-radius: 50%;
	right: -46px;
}

body .testimonial .row .tabs li:nth-child(3) figure img {
	margin-left: auto;
	margin-top: -50px;
}

body .testimonial .row .tabs li:nth-child(3):focus {
	border: 10px solid red;
}

body .testimonial .row .tabs li figure {
	position: relative;
}

body .testimonial .row .tabs li figure img {
	display: block;
}

body .testimonial .row .tabs li figure::after {
	content: "";
	position: absolute;
	top: 0;
	z-index: -1;
	width: 100%;
	height: 100%;
	border: 4px solid #dff9d9;
	border-radius: 50%;
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1);
	-webkit-transition: 0.3s;
	-o-transition: 0.3s;
	transition: 0.3s;
}

body .testimonial .row .tabs li figure:hover::after {
	-webkit-transform: scale(1.1);
	-ms-transform: scale(1.1);
	transform: scale(1.1);
}

body .testimonial .row .tabs.carousel-indicators li.active figure::after
	{
	-webkit-transform: scale(1.1);
	-ms-transform: scale(1.1);
	transform: scale(1.1);
}

body .testimonial .row .carousel>h3 {
	font-size: 20px;
	line-height: 1.45;
	color: rgba(0, 0, 0, 0.5);
	font-weight: 600;
	margin-bottom: 0;
}

body .testimonial .row .carousel h1 {
	font-size: 40px;
	line-height: 1.225;
	margin-top: 23px;
	font-weight: 700;
	margin-bottom: 0;
}

body .testimonial .row .carousel .carousel-indicators {
	all: unset;
	padding-top: 43px;
	display: flex;
	list-style: none;
}

body .testimonial .row .carousel .carousel-indicators li {
	background: #000;
	background-clip: padding-box;
	height: 2px;
}

body .testimonial .row .carousel .carousel-inner .carousel-item .quote-wrapper
	{
	margin-top: 42px;
}

body .testimonial .row .carousel .carousel-inner .carousel-item .quote-wrapper p
	{
	font-size: 18px;
	line-height: 1.72222;
	font-weight: 500;
	color: rgba(0, 0, 0, 0.7);
}

body .testimonial .row .carousel .carousel-inner .carousel-item .quote-wrapper h3
	{
	color: #000;
	font-weight: 700;
	margin-top: 37px;
	font-size: 20px;
	line-height: 1.45;
	text-transform: uppercase;
}

@media only screen and (max-width: 1200px) {
	body .testimonial .row .tabs {
		margin-right: 25px;
	}
}
</style>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta charset="utf-8">

<title>Bem Vindo</title>

<style type="text/css">
.fixed-top, .sb-nav-fixed #layoutSidenav #layoutSidenav_nav,
	.sb-nav-fixed .sb-topnav {
	position: fixed;
	top: 0;
	right: 0;
	left: 0;
	z-index: 1030;
}

/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}
</style>

</head>
<body>

	<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
		<div class="container-fluid">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">RibeiroKey</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Criar Pasta</a></li>
						<li><a href="#">Criar Serviço</a></li>
						<li><a href="#">Criar Cartão</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>
								Inscrever-se</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
								Conecte-se</a></li>
					</ul>
				</div>
			</div>

		</div>
	</nav>
	<br>

	<section class="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 d-none d-lg-block">
					<ol class="carousel-indicators tabs">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active">
							<figure>
								<img
									src="https://livedemo00.template-help.com/wt_62267_v8/prod-20823-one-service/images/testimonials-01-179x179.png"
									class="img-fluid" alt="">
							</figure>
						</li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1">
							<figure>
								<img
									src="https://livedemo00.template-help.com/wt_62267_v8/prod-20823-one-service/images/testimonials-02-306x306.png"
									class="img-fluid" alt="">
							</figure>
						</li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2">
							<figure>
								<img
									src="https://livedemo00.template-help.com/wt_62267_v8/prod-20823-one-service/images/testimonials-03-179x179.png"
									class="img-fluid" alt="">
							</figure>
						</li>
					</ol>
				</div>
				<div
					class="col-lg-6 d-flex justify-content-center align-items-center">
					<div id="carouselExampleIndicators" data-interval="false"
						class="carousel slide" data-ride="carousel">
						<h3>O QUE DIZEM NOSSOS CLIENTES</h3>
						<h1>TESTEMUNHOS</h1>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="quote-wrapper">
									<p>Já experimentei muitos serviços de gerenciamento de
										senha, mas o RibeiroKey é algo de outro mundo! A agilidade
										deles é um diferencial, por isso recomendo esta empresa a
										todos os meus amigos!</p>
									<h3>peter lee</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>


</html>