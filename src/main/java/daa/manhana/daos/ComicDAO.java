package daa.manhana.daos;


import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;

import daa.manhana.entities.Comic;


public class ComicDAO extends ArticleDAO<Comic> { 

	public ComicDAO() {
		super();
	}

	public ComicDAO(EntityManagerFactory emf) {
		super(emf);
	}

	@Override
	public List<Comic> findByName(String name)
	{
		TypedQuery<Comic> q = createQuery(
				"SELECT object(p) "
				+ "FROM Comic AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		return q.getResultList();
	}
	
	@Override
	public List<Comic> getAll() {		
		return createQuery(
			"SELECT object(p) "
			+ "FROM Comic AS p "
			+ "ORDER BY p.name"
		).getResultList();
	}
}
