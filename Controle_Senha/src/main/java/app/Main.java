package app;

import dao.ServicosDao;
import dao.UsuarioDao;
import model.Cartao;
import model.Pasta;
import model.Servicos;
import model.Usuario;

public class Main {

	public static void main(String[] args) {
		
		Usuario user = new Usuario();
		user.setCpf("123145678");
		user.setEmail("Ele@email.com");
		user.setNome("Fernando");
		user.setSenha("12345");
		
		UsuarioDao userrepo = new UsuarioDao();
		userrepo.save(user);
		
		Pasta pasta = new Pasta();
		pasta.setNome("pasta1");
		
		//pasta.setUsuario(userrepo.findById(Usuario.class, 1L));
		
		Servicos services = new Servicos();
		services.setNome("Amazon");
		services.setNomeUsuario("AWS");
		services.setSenha("A123");
		services.setUrl("www.amazon.com");
		
		ServicosDao servicesrepo = new ServicosDao();
		//servicesrepo.save(services);
		
		Cartao card = new Cartao();
		card.setAnoVencimento(3);
	}

}
