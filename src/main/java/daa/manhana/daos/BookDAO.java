package daa.manhana.daos;

import java.util.List;

import javax.persistence.TypedQuery;

import daa.manhana.entities.Book;

public class BookDAO extends ArticleDAO<Book> { 

	public BookDAO() {
		super();
	}
	
	@Override
	public List<Book> findByName(String name) {
		DAOUtils.setUp();
		
		TypedQuery<Book> q = createQuery(
				"SELECT object(p) "
				+ "FROM Book AS p "
				+ "WHERE p.name LIKE :pattern AND "
				+ "p.discriminator = 'book'"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		List<Book> toRet = (List<Book>) q.getResultList();
		
		DAOUtils.closeTransaction();
		
		return toRet;
	}
	
	@Override
	public List<Book> getAll() {
		DAOUtils.setUp();
		
		List<Book> toRet = createQuery(
			"SELECT object(p) "
			+ "FROM Book AS p "
			+ "WHERE p.discriminator like '%book%' "
			+ "ORDER BY p.name"
		).getResultList();
		
		DAOUtils.closeTransaction();
		
		return toRet;
	}
	
	@Override
	public Book findConcreteObject (String name) {
		DAOUtils.setUp();
		
		TypedQuery<Book> q = createQuery(
				"SELECT object(p) "
				+ "FROM " + getClassName() + " AS p "
				+ "WHERE p.name LIKE :pattern AND "
				+ "p.discriminator = 'book' "
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		Book toRet = q.getSingleResult();
		
		DAOUtils.closeTransaction();
		
		return toRet;
	}
}
