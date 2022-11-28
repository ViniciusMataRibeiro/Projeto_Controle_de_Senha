package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PastaDao;
import dao.ServicosDao;
import model.Pasta;
import model.Servicos;
import model.Usuario;
import util.Login;

@WebServlet("/ServletServico")
public class ServletServico extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletServico() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ServicosDao dao = new ServicosDao();
		long servicoid = Long.parseLong(request.getParameter("servicoid"));
		Servicos delservico = dao.findById(Servicos.class, servicoid).get();

		dao.delete(delservico);

		response.sendRedirect("consultaServico.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ServicosDao Dao = new ServicosDao();
		Usuario UsuarioLogado = Login.GetLogin(null);

		if (request.getParameter("servicoid") == null) {
			String nome = request.getParameter("Nome");
			String usuario = request.getParameter("Usuario");
			String senha = request.getParameter("password");
			String pasta = request.getParameter("pasta");
			String url = request.getParameter("Url");
			Servicos servicos = new Servicos();

			PastaDao daopasta = new PastaDao();
			Pasta obj = new Pasta();
			obj = daopasta.findById(Pasta.class, Long.parseLong(pasta)).get();
			
			servicos.setNome(nome);
			servicos.setNomeUsuario(usuario);
			servicos.setSenha(senha);
			servicos.setUrl(url);
			servicos.setPasta(obj);

			Dao.save(servicos);
		} else {
			long servicoId = Long.parseLong(request.getParameter("servicoid"));
			Servicos servicos = Dao.findById(Servicos.class, servicoId).get();

			servicos.setNome(request.getParameter("Nome"));
			servicos.setNomeUsuario(request.getParameter("Usuario"));
			servicos.setSenha(request.getParameter("password"));
			servicos.setUrl(request.getParameter("Url"));

			String pasta = request.getParameter("pasta");

			PastaDao daopasta = new PastaDao();
			Pasta obj = new Pasta();
			obj = daopasta.findById(Pasta.class, Long.parseLong(pasta)).get();

			servicos.setPasta(obj);
			Dao.save(servicos);
		}
		response.sendRedirect("consultaServico.jsp");
	}

}
