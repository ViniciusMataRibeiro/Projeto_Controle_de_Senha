<%@page import="model.Pasta"%>
<%@page import="dao.PastaDao"%>
<%@page import="model.Cartao"%>
<%@page import="dao.CartaoDao"%>
<%@page import="util.Login"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Cartões</title>

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
<body>

	<%
	CartaoDao dao = new CartaoDao();
	PastaDao pastadao = new PastaDao();
	List<Cartao> listCartao = dao.findAll(Cartao.class);
	%>

	<section class="vh-100" style="background-color: #eee;">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<p style="margin-left: 22%; margin-top: 1%;">
						<a href="<%=request.getContextPath()%>/consultarServico.jsp"
							style="color: #fff; margin: 15px;">Consultar Serviços</a><a
							href="<%=request.getContextPath()%>/consultaPasta.jsp"
							style="color: #fff; margin: 15px;">Consultar Pastas</a><a
							style="color: #fff; margin: 15px;"
							href="<%=request.getContextPath()%>/pagePrincipal.jsp">Pagina
							principal</a>
					</p>
				</div>
			</div>
		</nav>
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<table class="table align-middle mb-0 bg-white">
									<thead class="bg-light">
										<tr>
											<th>Nome</th>
											<th>Titular</th>
											<th>Bandeira</th>
											<th>Numero</th>
											<th>Mes Vencimento</th>
											<th>Pasta</th>
											<th style="text-align: center;">Ação</th>
										</tr>
										<a type="button" class="btn btn-outline-success"
											href="CadastroCartao.jsp">Novo</a>
									</thead>
									<tbody>
										<%
										for (Cartao obj : listCartao) {

											Pasta pasta = pastadao.findByIdPasta(Pasta.class, obj.getPasta()).get();
										%>
										<tr>
											<td>
												<p class="fw-bold mb-1"><%=obj.getNome()%></p>
											</td>
											<td>
												<p class="fw-normal mb-1"><%=obj.getTitular()%></p>
											</td>
											<td>
												<p class="fw-normal mb-1"><%=obj.getBandeira()%></p>
											</td>
											<td>
												<p class="fw-normal mb-1"><%=obj.getNumero()%></p>
											</td>
											<td>
												<p class="fw-normal mb-1"><%=obj.getMesVencimento()%></p>
											</td>
											<td>
												<p class="fw-normal mb-1"><%=pasta.getNome()%></p>
											</td>
											<td style="text-align: center"><a type="button"
												class="btn btn-outline-info"
												href="editCartao.jsp?id=<%=obj.getId()%>">Editar</a> <a
												type="button" class="btn btn-outline-danger"
												href="<%=request.getContextPath()%>/ServletCartao?cartaoid=<%=obj.getId()%>">Excluir</a>
											</td>
										</tr>
										<%
										}
										%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>