package daa.manhana.daos;

import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;

import daa.manhana.entities.Book;

public class BookDAO extends ArticleDAO<Book> { 

	public BookDAO() {
		super();
	}

	public BookDAO(EntityManagerFactory emf) {
		super(emf);
	}

	@Override
	public List<Book> findByName(String name)
	{
		TypedQuery<Book> q = createQuery(
				"SELECT object(p) "
				+ "FROM Book AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		return q.getResultList();
	}
	
	@Override
	public List<Book> getAll() {		
		return createQuery(
			"SELECT object(p) "
			+ "FROM Book AS p "
			+ "ORDER BY p.name"
		).getResultList();
	}

}
