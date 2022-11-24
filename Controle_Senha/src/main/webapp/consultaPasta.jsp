<%@page import="util.Login"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
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
<title>Pastas</title>
</head>
<body>

	<%
	PastaDao dao = new PastaDao();
	List<Pasta> listPasta = dao.findAll(Pasta.class);
	Usuario usuario = Login.GetLogin(null);
	%>

	<section class="vh-100" style="background-color: #eee;">
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
											<th>Usuário</th>
											<th>Nome Pasta</th>
											<th style="text-align: center;">Ação</th>
										</tr>
										<a type="button" class="btn btn-outline-success" href="cadastroPasta.jsp">Novo</a>
									</thead>
									<tbody>
										<%
										for (Pasta obj : listPasta) {
										%>
										<tr>
											<td>
												<div class="d-flex align-items-center">
													<img src="https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png"
														alt="" style="width: 45px; height: 45px"
														class="rounded-circle" />
													<div class="ms-3">
														<p class="fw-bold mb-1"><%=usuario.getNome()%></p>
														<p class="text-muted mb-0"><%=usuario.getEmail()%></p>
													</div>
												</div>
											</td>
											<td>
												<p class="fw-normal mb-1"><%=obj.getNome()%></p>
											</td>
											<td style="text-align: center">
												<a type="button" class="btn btn-outline-info" href="editPasta.jsp?id=<%= obj.getId()%>">Editar</a>
												<a type="button" class="btn btn-outline-danger" href="<%= request.getContextPath()%>/ControllerPasta?id=<%=obj.getId()%>">Excluir</a>
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