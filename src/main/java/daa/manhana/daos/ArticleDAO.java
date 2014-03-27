package daa.manhana.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

<<<<<<< HEAD
public class ArticleDAO<T> extends GenericDAO<T> {
=======
import daa.manhana.entities.Article;
import daa.manhana.entities.User;

public class ArticleDAO extends GenericDAO<Article> {
>>>>>>> e02c40c7903cf73b64066193835944732912e9cd
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
