package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDao;
import model.Usuario;
import util.Login;

@WebServlet({ "/ServletLogin", "/ControllerLogin" })
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletLogin() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("user");
		String password = request.getParameter("password");
		UsuarioDao userdao = new UsuarioDao();

		Usuario usuario = userdao.login(user, password);
		if (usuario != null) {
			
			Login.GetLogin(usuario);
			
			response.sendRedirect("consultaPasta.jsp");
		} else {
			response.sendRedirect("formLogin.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
