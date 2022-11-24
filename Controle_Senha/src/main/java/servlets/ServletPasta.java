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

@WebServlet({ "/ServletPasta", "/ControllerPasta" })
public class ServletPasta extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public ServletPasta() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PastaDao dao = new PastaDao();
		long pastaid = Long.parseLong(request.getParameter("id"));
		Pasta delpasta = dao.findById(Pasta.class, pastaid).get();
		
		dao.delete(delpasta);
		
		response.sendRedirect("consultaPasta.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Usuario UsuarioLogado = Login.GetLogin(null);
		
		PastaDao dao = new PastaDao();
		
		if(request.getParameter("pastaid")==null) {
			String nomePasta = request.getParameter("NomePasta");
			Pasta pasta = new Pasta();
			pasta.setNome(nomePasta);
			pasta.setUsuario(UsuarioLogado);
			
			dao.save(pasta);
		}else {
			long pastaid = Long.parseLong(request.getParameter("pastaid"));
			Pasta pasta = dao.findById(Pasta.class, pastaid).get();
			
			pasta.setNome(request.getParameter("NomePasta"));
			
			dao.save(pasta);
		}
		response.sendRedirect("consultaPasta.jsp");
	}

}
