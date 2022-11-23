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
<title>Cadastrar Pasta</title>
</head>
<body>

	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black"
						style="border-radius: 25px; background: #d2d4d5">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Criar
										Nova Pasta</p>

									<form action="ControllerCadastroPasta" method="post"
										class="mx-1 mx-md-4">

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="text" id="form3Example1c" class="form-control"
													placeholder="Nome da Pasta" name="NomePasta" />
											</div>
										</div>

										<div class="btn-group" role="group">
											<div class="d-flex justify-content-center mx-3 mb-3 mb-lg-4">
												<button type="submit" class="btn btn-outline-success"
													value="Salvar" style="width: 136px;">Salvar</button>
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