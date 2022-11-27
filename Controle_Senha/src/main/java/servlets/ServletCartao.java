package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Enum.Bandeira;
import Enum.MesVencimento;
import dao.CartaoDao;
import dao.PastaDao;
import model.Cartao;
import model.Pasta;
import model.Usuario;
import util.Login;

@WebServlet("/ServletCartao")
public class ServletCartao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletCartao() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CartaoDao dao = new CartaoDao();
		long pastaid = Long.parseLong(request.getParameter("cartaoid"));
		Cartao delcartao = dao.findById(Cartao.class, pastaid).get();

		dao.delete(delcartao);

		response.sendRedirect("consultaCartao.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CartaoDao Dao = new CartaoDao();
		Usuario UsuarioLogado = Login.GetLogin(null);

		if (request.getParameter("cartaoid") == null) {
			String nomeCartao = request.getParameter("Nome");
			String titular = request.getParameter("Titular");
			int numero = Integer.parseInt(request.getParameter("numero"));
			String bandeira = request.getParameter("bandeira");
			String mes = request.getParameter("mes");
			String pasta = request.getParameter("pasta");
			String ano = request.getParameter("Anovencimento");
			Cartao cartao = new Cartao();

			PastaDao daopasta = new PastaDao();
			Pasta obj = new Pasta();
			obj = daopasta.findById(Pasta.class, Long.parseLong(pasta)).get();

			cartao.setNome(nomeCartao);
			cartao.setTitular(titular);
			cartao.setNumero(numero);
			Bandeira bandeira2 = Bandeira.ordinal(Integer.parseInt(bandeira));
			cartao.setBandeira(bandeira2);
			MesVencimento mesVencimento = MesVencimento.ordinal(Integer.parseInt(mes));
			cartao.setMesVencimento(mesVencimento);
			cartao.setAnoVencimento(Integer.parseInt(ano));
			cartao.setPasta(obj);
			Dao.save(cartao);
		} else {
			long cartaoId = Long.parseLong(request.getParameter("cartaoid"));
			Cartao cartao = Dao.findById(Cartao.class, cartaoId).get();
			
			cartao.setNome(request.getParameter("Nome"));
			cartao.setTitular(request.getParameter("Titular"));
			cartao.setNumero(Integer.parseInt(request.getParameter("numero")));
			cartao.setBandeira(Bandeira.ordinal(Integer.parseInt(request.getParameter("bandeira"))));
			cartao.setMesVencimento(MesVencimento.ordinal(Integer.parseInt(request.getParameter("mes"))));
			cartao.setAnoVencimento(Integer.parseInt(request.getParameter("Anovencimento")));
			
			String pasta = request.getParameter("pasta");
			
			PastaDao daopasta = new PastaDao();
			Pasta obj = new Pasta();
			obj = daopasta.findById(Pasta.class, Long.parseLong(pasta)).get();
			
			cartao.setPasta(obj);
			Dao.save(cartao);
		}
		response.sendRedirect("consultaCartao.jsp");
	}

}
