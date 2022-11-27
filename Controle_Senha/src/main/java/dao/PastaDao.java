package dao;

import java.util.Optional;

import model.Pasta;

public class PastaDao extends Dao<Pasta, Long> {

	public Optional<Pasta> findByIdPasta(Class<Pasta> clazz, Pasta pasta) {
		return Optional.ofNullable(em.find(clazz, pasta.getId()));
	}
	
}
