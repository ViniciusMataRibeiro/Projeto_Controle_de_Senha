<%@page import="model.Pasta"%>
<%@page import="java.util.List"%>
<%@page import="dao.PastaDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Cadastro Cartão</title>
</head>
<body>

	<%
	PastaDao dao = new PastaDao();
	List<Pasta> listPasta = dao.findAll(Pasta.class);
	%>

	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Cadastrar
										Cartão</p>

									<form action="ServletCartao" method="post"
										class="mx-1 mx-md-4">

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="text" id="form3Example1c" class="form-control"
													placeholder="Nome" name="Nome" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="text" id="form3Example1c" class="form-control"
													placeholder="Titular" name="Titular" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="number" id="form3Example3c"
													class="form-control" placeholder="Numero do cartao"
													name="numero" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i> <select
												class="custom-select" id="inputGroupSelect01" name = "bandeira"
												style="width: 46%; border-color: #ced4da;">
												<option selected>Bandeira</option>
												<option value="1">Visa</option>
												<option value="2">Master</option>
												<option value="3">Elo</option>
												<option value="4">HiperCard</option>
												<option value="5">Maestro</option>
											</select> <i class="fas fa-envelope fa-lg me-3 fa-fw"></i> <select
												class="custom-select" id="inputGroupSelect01" name = "mes"
												style="width: 46%; border-color: #ced4da;">
												<option selected>Mes Vencimento</option>
												<option value="1">Janeiro</option>
												<option value="2">Fevereiro</option>
												<option value="3">Março</option>
												<option value="4">Abril</option>
												<option value="5">Maio</option>
												<option value="6">Junho</option>
												<option value="7">Julho</option>
												<option value="8">Agosto</option>
												<option value="9">Setembro</option>
												<option value="10">Outubro</option>
												<option value="11">Novembro</option>
												<option value="12">Dezembro</option>
											</select>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-key fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="number" id="form3Example4cd"
													class="form-control" placeholder="Ano Vencimento"
													name="Anovencimento" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i> <select
												class="custom-select" id="inputGroupSelect01" name = "pasta"
												style="width: 96%; border-color: #ced4da;">
												<option selected>Pasta</option>
												<%
												int cont = 0;
												for (Pasta obj : listPasta) {
													cont += 1;
												%>
												<option value="<%=obj.getId()%>"><%= obj.getNome() %></option>
												<%} %>
											</select>
										</div>

										<div class="btn-group" role="group" style="margin-left: 10%;">
											<div class="d-flex justify-content-center mx-3 mb-3 mb-lg-4">
												<button type="submit" class="btn btn-outline-success"
													value="Salvar" style="width: 136px;">Salvar</button>
											</div>

											<div class="d-flex justify-content-center mx-2 mb-3 mb-lg-4">
												<a href="<%=request.getContextPath()%>/consultaCartao.jsp"
													class="btn btn-outline-danger" style="width: 136px;">Cancelar</a>
											</div>
										</div>
									</form>

								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

									<img
										src="https://img.freepik.com/fotos-gratis/garota-loira-feliz-e-descontraida-em-camiseta-laranja_176420-33361.jpg?w=1380&t=st=1669509919~exp=1669510519~hmac=40c67bda88cb7d793bc1875f7879d1ec31e0185bc6ac66ae4125be19e75ab81b"
										class="img-fluid" alt="Sample image">

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