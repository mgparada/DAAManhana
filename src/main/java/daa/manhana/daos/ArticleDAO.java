package daa.manhana.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

public class ArticleDAO<T> extends GenericDAO<T> {
	public ArticleDAO() {
		super();
	}

	public ArticleDAO(EntityManager em) {
		super(em);
	}

	public List<T> findByName(String name) {
		TypedQuery<T> q = createQuery(
				"SELECT object(p) "
				+ "FROM Article AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		return (List<T>) q.getResultList();
	}
	
	public List<T> getAll() {		
		return createQuery(
			"SELECT object(p) "
			+ "FROM Article AS p "
			+ "ORDER BY p.name"
		).getResultList();
	}
}
