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
		try {
			this.openTransaction();
			
			TypedQuery<Book> q = createQuery(
					"SELECT object(p) "
					+ "FROM Book AS p "
					+ "WHERE p.name LIKE :pattern AND "
					+ "p.discriminator = 'book'"
			);
			
			q.setParameter("pattern", "%" + name + "%");
			
			List<Book> toRet = (List<Book>) q.getResultList();
			
			return toRet;
		
		} finally {
			this.closeTransaction();
		}
	}
	
	public List<Book> findByName(String name, int page, int numResults) {
		try {
			TypedQuery<Book> q = createQuery(
				"SELECT object(p) "
				+ "FROM " + getClassName() + " AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern AND "
				+ "p.discriminator = 'book'"
			);
			
			q.setParameter("pattern", "%" + name + "%");
			q.setFirstResult(numResults * (page-1));
			q.setMaxResults(numResults);
			
			List<Book> toret = q.getResultList();
		
			return toret;
		} finally {
			this.closeTransaction();
		}
	}
	
	public int count(String name) {
		this.openTransaction();
		
		TypedQuery<Long> q = this.getEntityManager().createQuery(
			"SELECT count(p)"
			+ "FROM " + getClassName() + " AS p "
			+ "WHERE p.name "
			+ "LIKE :pattern AND "
			+ "p.discriminator = 'book'",
			Long.class
		);
		
		
		q.setParameter("pattern", "%" + name + "%");		
		long toret = q.getSingleResult();
		
		this.closeTransaction();
		
		return (int)toret;
	}
	
	public int count() {
		this.openTransaction();
		
		long toret = this.getEntityManager().createQuery(
			"SELECT count(p) "
			+ "FROM " + getClassName() + " AS p "
			+ "WHERE p.discriminator = 'book'",
			Long.class
		).getSingleResult();
		
		this.closeTransaction();
		
		return (int) toret;
	}
	
	@Override
	public List<Book> getAll() {
		try {
			List<Book> toRet = createQuery(
				"SELECT object(p) "
				+ "FROM Book AS p "
				+ "WHERE p.discriminator like '%book%' "
				+ "ORDER BY p.name"
			).getResultList();
			
			return toRet;
		} finally {
			this.closeTransaction();
		}
	}
	
	public List<Book> getAll(int page, int numResults) {
		try {
			TypedQuery<Book> q = createQuery(
					"SELECT object(p) "
					+ "FROM " + getClassName() + " AS p "
					+ "WHERE p.discriminator like '%book%' "
					+ "ORDER BY p.name"
			);
			
			q.setFirstResult( numResults * page - numResults );
			q.setMaxResults(numResults);
			List<Book> toret = q.getResultList();
			
			return toret;
		} finally {
			this.closeTransaction();
		}
	}
	
	@Override
	public Book findConcreteObject (String name) {
		try {
			TypedQuery<Book> q = createQuery(
					"SELECT object(p) "
					+ "FROM " + getClassName() + " AS p "
					+ "WHERE p.name LIKE :pattern AND "
					+ "p.discriminator = 'book' "
			);
			
			q.setParameter("pattern", "%" + name + "%");
			
			Book toRet = q.getSingleResult();
			
			return toRet;
		} finally {
			this.closeTransaction();
		}
	}
}
