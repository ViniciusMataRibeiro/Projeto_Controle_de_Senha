package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PastaDao;
import model.Pasta;
import model.Usuario;
import util.Login;

@WebServlet({ "/ServletCadastroPasta", "/ControllerCadastroPasta" })
public class ServletCadastroPasta extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public ServletCadastroPasta() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Usuario UsuarioLogado = Login.GetLogin(null);
		
		String nomePasta = request.getParameter("NomePasta");
		
		Pasta pasta = new Pasta();
		pasta.setNome(nomePasta);
		pasta.setUsuario(UsuarioLogado);
		
		PastaDao dao = new PastaDao();
		dao.save(pasta);
		
		response.sendRedirect("PaginaPrincial.jsp");
	}

}
