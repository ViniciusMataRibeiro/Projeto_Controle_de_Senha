package dao;

import javax.persistence.TypedQuery;

import com.mysql.cj.Query;

import model.Usuario;

public class UsuarioDao extends Dao<Usuario, Long> {

	public Usuario login(String user, String password) {
		Usuario employee;
		try {
			TypedQuery<Usuario> query = em.createQuery("SELECT e FROM Usuario e WHERE e.email = ?1 and e.senha = ?2", Usuario.class);
			query.setParameter(1, user);
			query.setParameter(2, password);

			employee = query.getSingleResult();
		} catch (Exception e) {
			employee = null;
		}

		return employee;

	}

}
