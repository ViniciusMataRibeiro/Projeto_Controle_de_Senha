package util;

import model.Usuario;

public class Login {
	private static Usuario usuario;
	
	private Login() {}
	
	public static Usuario GetLogin(Usuario obj) {
		if (usuario == null) {
			usuario = new Usuario();
			
			usuario.setId(obj.getId());
			usuario.setNome(obj.getNome());
			usuario.setEmail(obj.getEmail());
			usuario.setCpf(obj.getCpf());
			usuario.setSenha(obj.getSenha());
		}
		
		return usuario;
	}

}
