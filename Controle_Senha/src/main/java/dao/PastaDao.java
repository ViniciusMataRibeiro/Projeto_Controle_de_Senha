package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.TypedQuery;

import model.Cartao;
import model.Pasta;
import model.Servicos;

public class PastaDao extends Dao<Pasta, Long> {

	public Optional<Pasta> findByIdPasta(Class<Pasta> clazz, Pasta pasta) {
		return Optional.ofNullable(em.find(clazz, pasta.getId()));
	}

	public int BuscarQuant(Long idpasta) {
		
		PastaDao dao = new PastaDao();
		Pasta pasta = dao.findById(Pasta.class, idpasta).get();
		
		List<Cartao> employee = new ArrayList<>();
		try {
			TypedQuery<Cartao> query = em.createQuery("SELECT c FROM Cartao c WHERE c.pasta = ?1", Cartao.class);
			query.setParameter(1, pasta);

			employee = query.getResultList();
		} catch (Exception e) {
			employee = null;
		}

		int cont = employee.size();

		List<Servicos> employee2 = new ArrayList<>();
		try {
			TypedQuery<Servicos> query = em.createQuery("SELECT s FROM Servicos s WHERE s.pasta = ?2", Servicos.class);
			query.setParameter(2, pasta);

			employee2 = query.getResultList();
		} catch (Exception e) {
			employee2 = null;
		}

		cont += employee2.size();

		return cont;

	}

}
