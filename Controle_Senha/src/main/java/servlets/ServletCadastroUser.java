package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDao;
import model.Usuario;

@WebServlet({ "/ServletCadastro", "/ControllerCadastroUser" })
public class ServletCadastroUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletCadastroUser() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nomeUsuario = request.getParameter("NomeUsuario");
		String CPF = request.getParameter("CPF");
		String Email = request.getParameter("Email");
		String Senha = request.getParameter("Senha");
		String Senha1 = request.getParameter("Senha1");
		
		if(!Senha.equals(Senha1)) {
			//da mensagem
		}
		
		Usuario usuario = new Usuario();
		usuario.setNome(nomeUsuario);
		usuario.setCpf(CPF);
		usuario.setEmail(Email);
		usuario.setSenha(Senha);
		
		UsuarioDao dao = new UsuarioDao();
		dao.save(usuario);
		
		List<Usuario> a = dao.findAll(Usuario.class);
		
		response.sendRedirect("consultaPagina.jsp");
	}

}
