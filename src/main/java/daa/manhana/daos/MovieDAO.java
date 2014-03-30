package daa.manhana.daos;

import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;

import daa.manhana.entities.Movie;

public class MovieDAO extends ArticleDAO<Movie> { 

	public MovieDAO() {
		super();
	}

	public MovieDAO(EntityManagerFactory emf) {
		super(emf);
	}

	@Override
	public List<Movie> findByName(String name)
	{
		TypedQuery<Movie> q = createQuery(
				"SELECT object(p) "
				+ "FROM Movie AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		return q.getResultList();
	}
	
	@Override
	public List<Movie> getAll() {		
		return createQuery(
			"SELECT object(p) "
			+ "FROM Movie AS p "
			+ "ORDER BY p.name"
		).getResultList();
	}
}
