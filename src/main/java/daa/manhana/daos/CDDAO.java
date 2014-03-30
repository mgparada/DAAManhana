package daa.manhana.daos;


import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;

import daa.manhana.entities.CD;

public class CDDAO extends ArticleDAO<CD> { 

	public CDDAO() {
		super();
	}

	public CDDAO(EntityManagerFactory emf) {
		super(emf);
	}
	
	@Override
	public List<CD> findByName(String name)
	{
		TypedQuery<CD> q = createQuery(
				"SELECT object(p) "
				+ "FROM CD AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		return q.getResultList();
	}
	
	@Override
	public List<CD> getAll() {		
		return createQuery(
			"SELECT object(p) "
			+ "FROM CD AS p "
			+ "ORDER BY p.name"
		).getResultList();
	}

}
