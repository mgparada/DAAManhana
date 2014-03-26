package daa.manhana.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import daa.manhana.entities.Article;

public class ArticleDAO extends GenericDAO<Article> {
	public ArticleDAO() {
		super();
	}

	public ArticleDAO(EntityManager em) {
		super(em);
	}

	public List<Article> findByName(String name) {
		TypedQuery<Article> q = createQuery(
				"SELECT object(p) "
				+ "FROM Article AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		return q.getResultList();
	}
	
	public List<Article> getAll() {		
		return createQuery(
			"SELECT object(p) "
			+ "FROM Article AS p "
			+ "ORDER BY p.name"
		).getResultList();
	}
}
