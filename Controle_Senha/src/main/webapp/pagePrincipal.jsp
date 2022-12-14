<%@page import="util.Login"%>
<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Bem Vindo</title>
<style>
body {
	font: 400 15px Lato, sans-serif;
	line-height: 1.8;
	color: #818181;
}

h2 {
	font-size: 24px;
	text-transform: uppercase;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	color: #303030;
	font-weight: 400;
	margin-bottom: 30px;
}

.jumbotron {
	background-color: #f4511e;
	color: #fff;
	padding: 100px 25px;
	font-family: Montserrat, sans-serif;
}

.container-fluid {
	padding: 60px 50px;
}

.bg-grey {
	background-color: #f6f6f6;
}

.logo-small {
	color: #f4511e;
	font-size: 50px;
}

.logo {
	color: #f4511e;
	font-size: 200px;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail img {
	width: 100%;
	height: 100%;
	margin-bottom: 10px;
}

.carousel-control.right, .carousel-control.left {
	background-image: none;
	color: #f4511e;
}

.carousel-indicators li {
	border-color: #f4511e;
}

.carousel-indicators li.active {
	background-color: #f4511e;
}

.item h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	font-style: italic;
	margin: 70px 0;
}

.item span {
	font-style: normal;
}

.panel {
	border: 1px solid #f4511e;
	border-radius: 0 !important;
	transition: box-shadow 0.5s;
}

.panel:hover {
	box-shadow: 5px 0px 40px rgba(0, 0, 0, .2);
}

.panel-footer .btn:hover {
	border: 1px solid #f4511e;
	background-color: #fff !important;
	color: #f4511e;
}

.panel-heading {
	color: #fff !important;
	background-color: #f4511e !important;
	padding: 25px;
	border-bottom: 1px solid transparent;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;
}

.panel-footer {
	background-color: white !important;
}

.panel-footer h3 {
	font-size: 32px;
}

.panel-footer h4 {
	color: #aaa;
	font-size: 14px;
}

.panel-footer .btn {
	margin: 15px 0;
	background-color: #f4511e;
	color: #fff;
}

.navbar {
	margin-bottom: 0;
	background-color: #f4511e;
	z-index: 9999;
	border: 0;
	font-size: 12px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

.navbar li a, .navbar .navbar-brand {
	color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #f4511e !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}

footer .glyphicon {
	font-size: 20px;
	margin-bottom: 20px;
	color: #f4511e;
}

.slideanim {
	visibility: hidden;
}

.slide {
	animation-name: slide;
	-webkit-animation-name: slide;
	animation-duration: 1s;
	-webkit-animation-duration: 1s;
	visibility: visible;
}

@
keyframes slide { 0% {
	opacity: 0;
	transform: translateY(70%);
}

@media screen and (max-width: 768px) {
	.col-sm-4 {
		text-align: center;
		margin: 25px 0;
	}
	.btn-lg {
		width: 100%;
		margin-bottom: 35px;
	}
}

@media screen and (max-width: 480px) {
	.logo {
		font-size: 150px;
	}
}
</style>
</head>

<%
Usuario usuario = Login.GetLogin(null);
boolean log = false;
if (usuario != null) {
	log = true;
}
%>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#myPage">RibeiroKey</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about">SOBRE</a></li>
					<li><a href="#services">SERVI??OS</a></li>
					<li><a href="#portfolio">SITE</a></li>
					<li><a href="#pricing">PRE??OS</a></li>
					<li><a href="#contact">CONTATO</a></li>
					<%
					if (log) {
					%>
					<li><a href=""><span class="glyphicon glyphicon-log-in"></span>
							Logado: <%=usuario.getNome()%></a></li>
					<%
					} else {
					%>
					<li><a href="#pricing"><span
							class="glyphicon glyphicon-user"></span> INSCREVER-SE</a></li>
					<li><a href="<%=request.getContextPath()%>/formLogin.jsp"><span
							class="glyphicon glyphicon-log-in"></span> CONECTE-SE</a></li>
					<%
					}
					%>
				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron text-center">
		<h1>RibeiroKey</h1>
		<p>Voc?? no controle de suas senhas, em um s?? lugar</p>
	</div>

	<!-- Container (About Section) -->
	<div id="about" class="container-fluid">
		<div class="row">
			<div class="col-sm-10">
				<h2>SOBRE</h2>
				<br>
				<h4>Guarde suas senhas, com seguran??a e rapidez, utilizando o gerenciador de senhas
					confi??vel por milh??es.</h4>
				<br>
				<p>A maneira mais f??cil e segura de gerenciar suas credenciais,
					senhas, cart??es de cr??dito e outros, permitindo uma boa organiza????o, sempre protegendo voc?? e sua
					fam??lia. N??o esquente mais com essas coisas, v?? em frente, esque??a as senhas: a RibeiroKey cuidar?? de tudo para voc?? aonde voc?? estiver.</p>
				<br> <br>
			</div>
			<div class="col-sm-2">
				<span class="glyphicon glyphicon-signal logo"></span>
			</div>
		</div>
	</div>

	<!-- Container (The Band Section) -->
	<div id="band" class="container text-center">
		<h3>Desenvolvedores</h3>
		<p>
			<em>Amamos oque fazemos!</em>
		</p>
		<p>Criamos um site de Gerenciamento de senhas. ?? importante cuidar
			da seguran??a, ser um parceiro ao cliente, mas, ao mesmo tempo, ele
			nos ajudar?? a crescer a cada dia mais. Pois, para chegar ao topo
			precisamos de todo feedback, em cada detalhe, a cada intera????o,
			ningu??m deve ficar insatisfeito com nosso site, que a menos que tire
			algum proveito disso.</p>
		<br>
		<div class="row">
			<div class="col-sm-4" style="margin-left: 20%;">
				<p class="text-center">
					<strong>Vinicius Ribeiro</strong>
				</p>
				<br> <a href="#demo" data-toggle="collapse"> <img
					src="Fotos/FotoVinicius2.jpg" class="img-circle person"
					alt="Random Name" width="255" height="255">
				</a>
				<div id="demo" class="collapse">
					<br>
					<p>Desenvolvedor Front e Back End</p>
					<p>Ama Mobile</p>
					<p>Aluno da Computa????o</p>
				</div>
			</div>
			<div class="col-sm-4">
				<p class="text-center">
					<strong>Gabriel Ribeiro</strong>
				</p>
				<br> <a href="#demo2" data-toggle="collapse"> <img
					src="Fotos/FotoGabriel.jpg" class="img-circle person"
					alt="Random Name" width="255" height="255">
				</a>
				<div id="demo2" class="collapse">
					<br>
					<p>Desenvolvedor Front e Back End</p>
					<p>Aluno da Computa????o</p>
				</div>
			</div>
		</div>
	</div>

	<br>

	<div class="container-fluid bg-grey">
		<div class="row">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-globe logo slideanim"
					style="margin-top: 6%;"></span>
			</div>
			<div class="col-sm-8">
				<h2>NOSSOS VALORES</h2>
				<br>
				<h4>
					<strong>MISS??O:</strong> Nossa miss??o ?? permitir que nossos clientes 
					tenham o poder de gerenciar suas senhas da forma mais segura e conveniente, 
					facilitar o acesso a seus servi??os e 
					organiza-los da forma que desejar, alem de manter seguro 
					ate mesmo os seus cart??es e tudo isso em um s?? lugar.
				</h4>
				<br>
				<p>
					<strong>VIS??O:</strong> Nossa vis??o, como uma empresa de gerenciamento de senhas,
					?? garantir a despreocupa????o do cliente em rela????o ao controle de suas senhas, 
					permitir uma acessibilidade agil a seus servi??os, mantendo-os em seguran??a e organizados
					tornando o mundo online um lugar mais seguro. Todos merecem estar seguros online.
				</p>
			</div>
		</div>
	</div>

	<!-- Container (Services Section) -->
	<div id="services" class="container-fluid text-center">
		<h2>SERVI??OS</h2>
		<h4>O que n??s oferecemos</h4>
		<br>
		<div class="row slideanim">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-off logo-small"></span>
				<h4>SEGURAN??A</h4>
				<p>Garantindo sempre a melhor seguran??a</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-heart logo-small"></span>
				<h4>AGILIDADE</h4>
				<p>Facil utiliza????o e em um s?? lugar </p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-lock logo-small"></span>
				<h4>TAREFA CONCLU??DA</h4>
				<p>Entregando sempre o Melhor!</p>
			</div>
		</div>
		<br> <br>
		<div class="row slideanim">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-leaf logo-small"></span>
				<h4>GERENCIAMENTO</h4>
				<p>Organiza????o da forma que desejar</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-certificate logo-small"></span>
				<h4>CERTIFICADO</h4>
				<p>Garantia de satisfa????o</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-wrench logo-small"></span>
				<h4 style="color: #303030;">TRABALHO DURO</h4>
				<p>Dispon??vel 24 horas para solucionar qualquer problema</p>
			</div>
		</div>
	</div>

	<!-- Container (Portfolio Section) -->
	<div id="portfolio" class="container-fluid text-center bg-grey">
		<h2>Nosso Site</h2>
		<br>
		<h4>Algumas Das Telas</h4>
		<div class="row text-center slideanim">
			<div class="col-sm-4">
				<div class="thumbnail">
					<%
					if (log) {
					%>
					<a type="submit" href="<%=request.getContextPath()%>/cadastroServico.jsp"> <img
						src="Fotos/PageCriarServico.png" alt="Modelo" width="400" height="300">
					</a>
					<%
					} else {
					%>
					<a type="submit" href="<%=request.getContextPath()%>/formLogin.jsp">
						<img src="Fotos/PageCriarServico.png" alt="Modelo" width="400"
						height="300">
					</a>
					<%
					}
					%>
					<p>
						<strong>Cadastro de Servi??os</strong>
					</p>
					<p>Imagem meramente ilustrativa</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<%
					if (log) {
					%>
					<a type="submit" href="<%=request.getContextPath()%>/cadastroPasta.jsp"> <img
						src="Fotos/PageCriarPasta.png" alt="Modelo" width="400" height="300">
					</a>
					<%
					} else {
					%>
					<a type="submit" href="<%=request.getContextPath()%>/formLogin.jsp">
						<img src="Fotos/PageCriarPasta.png" alt="Modelo" width="400"
						height="300">
					</a>
					<%
					}
					%>
					<p>
						<strong>Cadastro de Pasta</strong>
					</p>
					<p>Imagem meramente ilustrativa</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<%
					if (log) {
					%>
					<a type="submit" href="<%=request.getContextPath()%>/cadastroCartao.jsp"> <img
						src="Fotos/PageCartao2.png" alt="Modelo" width="400" height="300">
					</a>
					<%
					} else {
					%>
					<a type="submit" href="<%=request.getContextPath()%>/formLogin.jsp">
						<img src="Fotos/PageCartao2.png" alt="Modelo" width="400"
						height="300">
					</a>
					<%
					}
					%>
					<p>
						<strong>Cadastro de Cart??o</strong>
					</p>
					<p>Imagem meramente ilustrativa</p>
				</div>
			</div>
		</div>
		<br>

		<h2>O QUE NOSSOS CLIENTES DIZEM</h2>
		<div id="myCarousel" class="carousel slide text-center"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<h4>
						"Eu tentei outros gerenciadores de senhas chamados "melhores" e sempre volto para o RibeiroKey, que funciona perfeitamente. Confian??a total neste produto"<br>
						<span>Michael Roe</span>
					</h4>
				</div>
				<div class="item">
					<h4>
						"Produto excelente! Sou cliente h?? pouco tempo mas ja quero usar sempre. Eu o uso todos os dias e facilita o acesso a todas as minhas informa????es protegidas.<br> <span>John</span>
					</h4>
				</div>
				<div class="item">
					<h4>
						"Por muito tempo, confiei no RibeiroKey para ser meu "porteiro" para manter os "Bad Guys" afastados. Muito satisfeito e me sinto t??o seguro quanto se pode esperar."<br> <span>Chandler</span>
					</h4>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<!-- Container (Pricing Section) -->
	<div id="pricing" class="container-fluid">
		<div class="text-center">
			<h2>PRE??OS</h2>
			<h4>Escolha um plano de pagamento que funcione para voc??</h4>
		</div>
		<div class="row slideanim">
			<div class="col-sm-4 col-xs-12">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<h1>Basico</h1>
					</div>
					<div class="panel-body">
						<p>
							<strong>10</strong> Servi??os
						</p>
						<p>
							<strong>10</strong> Cart??es
						</p>
						<p>
							<strong>15</strong> Pastas
						</p>
						<p>
							<strong>Experi??ncia</strong> Basica
						</p>
					</div>
					<div class="panel-footer">
						<h3>GRATUITAMENTE</h3>
						<h4>MELHOR OFERTA!</h4>
						<a href="<%=request.getContextPath()%>/cadastroUsuario.jsp"
							class="btn btn-lg">Inscrever-se</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<h1>Intermedi??rio</h1>
					</div>
					<div class="panel-body">
						<p>
							<strong>20</strong> Servi??os
						</p>
						<p>
							<strong>20</strong> Cart??es
						</p>
						<p>
							<strong>30</strong> Pastas
						</p>
						<p>
							<strong>Experi??ncia</strong> M??dia
						</p>
					</div>
					<div class="panel-footer">
						<h3>R$29,99</h3>
						<h4>por m??s</h4>
						<a href="<%=request.getContextPath()%>/cadastroUsuario.jsp"
							class="btn btn-lg">Inscrever-se</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<h1>Premium</h1>
					</div>
					<div class="panel-body">
						<p>
							<strong>Ilimitado</strong> Servi??os
						</p>
						<p>
							<strong>Ilimitado</strong> Cart??es
						</p>
						<p>
							<strong>Ilimitado</strong> Pastas
						</p>
						<p>
							<strong>Experi??ncia</strong> Completa
						</p>
					</div>
					<div class="panel-footer">
						<h3>R$49,99</h3>
						<h4>por m??s</h4>
						<a href="<%=request.getContextPath()%>/cadastroUsuario.jsp"
							class="btn btn-lg">Inscrever-se</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Container (Contact Section) -->
	<div id="contact" class="container-fluid bg-grey">
		<h2 class="text-center">CONTATO</h2>
		<div class="row">
			<div class="col-sm-5">
				<p>Entre em contato conosco e retornaremos em at?? 24 horas.</p>
				<p>
					<span class="glyphicon glyphicon-map-marker"></span> Brasil, BR
				</p>
				<p>
					<span class="glyphicon glyphicon-phone"></span> (35) 9 0000-0000
				</p>
				<p>
					<span class="glyphicon glyphicon-envelope"></span>
					myemail@ribeirokey.com
				</p>
			</div>
			<div class="col-sm-7 slideanim">
				<div class="row">
					<div class="col-sm-6 form-group">
						<input class="form-control" id="name" name="name"
							placeholder="Nome" type="text" required>
					</div>
					<div class="col-sm-6 form-group">
						<input class="form-control" id="email" name="email"
							placeholder="Email" type="email" required>
					</div>
				</div>
				<textarea class="form-control" id="comments" name="comments"
					placeholder="Comente" rows="5"></textarea>
				<br>
				<div class="row">
					<div class="col-sm-12 form-group">
						<button class="btn btn-default pull-right" type="submit">Enviar</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="container-fluid text-center">
		<a href="#myPage" title="To Top"> <span
			class="glyphicon glyphicon-chevron-up"></span>
		</a>
		<p>Copyright ?? 2022 Todos os direitos reservados a Vinicius &
			Gabriel</p>
	</footer>

	<script type="text/javascript">
		$(document).ready(
				function() {
					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {
								// Make sure this.hash has a value before overriding default behavior
								if (this.hash !== "") {
									// Prevent default anchor click behavior
									event.preventDefault();

									// Store hash
									var hash = this.hash;

									// Using jQuery's animate() method to add smooth page scroll
									// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {

										// Add hash (#) to URL when done scrolling (default click behavior)
										window.location.hash = hash;
									});
								} // End if
							});

					$(window).scroll(function() {
						$(".slideanim").each(function() {
							var pos = $(this).offset().top;

							var winTop = $(window).scrollTop();
							if (pos < winTop + 600) {
								$(this).addClass("slide");
							}
						});
					});
				})
	</script>
</body>
</html>