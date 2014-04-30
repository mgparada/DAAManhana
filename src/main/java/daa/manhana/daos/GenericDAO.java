package daa.manhana.daos;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.RollbackException;
import javax.persistence.TransactionRequiredException;
import javax.persistence.TypedQuery;

public class GenericDAO<T> {
	
	public GenericDAO() {
	}
	
	public List<T> findByName(String name) {
		try {
			this.openTransaction();
			
			TypedQuery<T> q = createQuery(
				"SELECT object(p) "
				+ "FROM " + getClassName() + " AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
			);
			
			q.setParameter("pattern", "%" + name + "%");
			
			List<T> toRet = (List<T>) q.getResultList();
			
			return toRet;
		} finally {
			this.closeTransaction();
		}
	}
	
	public List<T> findByName(String name, int page, int numResults) {
		this.openTransaction();
		
		TypedQuery<T> q = createQuery(
			"SELECT object(p) "
			+ "FROM " + getClassName() + " AS p "
			+ "WHERE p.name "
			+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		q.setFirstResult(numResults * (page-1));
		q.setMaxResults(numResults);
		
		List<T> toret = q.getResultList();
		
		this.closeTransaction();
		
		return toret;
	}
	
	public int count(String name) {
		this.openTransaction();
		
		TypedQuery<T> q = createQuery(
			"SELECT object(p) "
			+ "FROM " + getClassName() + " AS p "
			+ "WHERE p.name "
			+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		int count = q.getResultList().size();	// bastante cutre, pero en HQL con count() peta
		
		this.closeTransaction();
		
		return count;
	}
	
	public int count() {
		this.openTransaction();
		
		long toret = this.getEntityManager().createQuery(
			"SELECT count(p) "
			+ "FROM " + getClassName() + " AS p ",
			Long.class
		).getSingleResult();
		
		this.closeTransaction();
		
		return (int) toret;
	}
	
	public List<T> getAll() {		
		this.openTransaction();
		
		List<T> toRet = createQuery(
			"SELECT object(p) "
			+ "FROM " + getClassName() + " AS p "
			+ "ORDER BY p.name"
		).getResultList();
		
		this.closeTransaction();
		
		return toRet;
	}
	
	public List<T> getAll(int page, int numResults) {
		this.openTransaction();
		
		TypedQuery<T> q = createQuery(
			"SELECT object(p) "
			+ "FROM " + getClassName() + " AS p "
			+ "ORDER BY p.name"
		);
		
		q.setFirstResult( (numResults * page - numResults) );
		q.setMaxResults(numResults);
		
		List<T> toret = q.getResultList();
		
		this.closeTransaction();
		
		return toret;
	}
	
	public T findConcreteObject (String name) {
		this.openTransaction();
		
		TypedQuery<T> q = createQuery(
			"SELECT object(p) "
			+ "FROM " + getClassName() + " AS p "
			+ "WHERE p.name "
			+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		T toRet = q.getSingleResult();
		
		this.closeTransaction();
		
		return toRet;
	}
	
	public void save(T entity) 
			throws EntityExistsException, IllegalArgumentException, TransactionRequiredException {
		this.openTransaction();
		this.getEntityManager().persist(entity);
		this.closeTransaction();
	}
	
	public void update(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		this.openTransaction();
		this.getEntityManager().merge(entity);
		this.closeTransaction();
	}
	
	public void delete(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		this.openTransaction();
		this.getEntityManager().remove(entity);
		this.closeTransaction();
	}
	
	public T findById(Object id) {
		this.openTransaction();
		
		T toRet = this.getEntityManager().find(getGenericClass(), id);
		this.closeTransaction();
		
		return toRet;
	}

	protected TypedQuery<T> createQuery(String query) {
		return this.getEntityManager().createQuery(query, getGenericClass());	
	}
	
	@SuppressWarnings("unchecked")
	protected Class<T> getGenericClass() {
		Class<T> genericClassName = (Class<T>) getClass();
		
		String[] split = genericClassName.toString().split("\\.");
        
        if ( split[split.length-1].equals("ArticleDAO") ) {
        	return (Class<T>) new daa.manhana.entities.Article().getClass();
        }
		
        return (Class<T>) ((ParameterizedType)genericClassName.getGenericSuperclass()).getActualTypeArguments()[0];        
	}
	
	protected String getClassName() {
		Class<T> extendedClass = getGenericClass();
		
		return extendedClass.getName();
	}
	
	protected synchronized EntityManager getEntityManager() {
		return EntityManagerRequestListener.getEntityManager();
	}

	protected synchronized void openTransaction() {
		this.getEntityManager().getTransaction().begin();
	}
	
	protected synchronized void closeTransaction() {
		if (this.getEntityManager().getTransaction().isActive()) {
			try {
				this.getEntityManager().getTransaction().commit();
			} catch (RollbackException re) {
				this.getEntityManager().getTransaction().rollback();
			}
		}
	}
}
