<%@page import="model.Pasta"%>
<%@page import="dao.PastaDao"%>
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
<title>Editar Pasta</title>
</head>
<body>

	<%
	long pastaId = Long.parseLong(request.getParameter("id"));
	PastaDao dao = new PastaDao();
	Pasta pasta = dao.findById(Pasta.class, pastaId).get();
	%>

	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black"
						style="border-radius: 25px; background: #d2d4d5">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1" style="margin-top: 5%;">

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Editar
										Pasta</p>

									<form action="ControllerPasta" method="post"
										class="mx-1 mx-md-4">
										<input type="hidden" name="pastaid" value="<%=pastaId%>" />
										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="text" id="form3Example1c" class="form-control"
													placeholder="Nome da Pasta" name="NomePasta"
													value="<%=pasta.getNome()%>" />
											</div>
										</div>

										<div class="btn-group" role="group" style="margin-left: 10%;">
											<div class="d-flex justify-content-center mx-3 mb-3 mb-lg-4">
												<input type="submit" class="btn btn-outline-success"
													value="Salvar" style="width: 136px;">
											</div>

											<div class="d-flex justify-content-center mx-2 mb-3 mb-lg-4">
												<a href="<%=request.getContextPath()%>/PaginaPrincial.jsp"
													class="btn btn-outline-danger" style="width: 136px;">Cancelar</a>
											</div>
										</div>

									</form>

								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

									<img
										src="https://www.printi.com.br/blog/sites/default/files/mkt-blog-fechamentoarquivo-v01_1.jpg"
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