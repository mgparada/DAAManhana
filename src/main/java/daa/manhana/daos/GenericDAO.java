package daa.manhana.daos;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TransactionRequiredException;
import javax.persistence.TypedQuery;

public abstract class GenericDAO<T> {
	private EntityManagerFactory emf;
	private EntityManager em;
	
	public GenericDAO() {
	}
	
	public List<T> findByName(String name) {
		createEntities();
		
		TypedQuery<T> q = createQuery(
				"SELECT object(p) "
				+ "FROM " + getClassName() + " AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		List<T> toRet = (List<T>) q.getResultList();
		
		closeEntityManagerFactory();
		
		return toRet;
	}
	
	public List<T> getAll() {
		createEntities();
		
		List<T> toRet = createQuery(
			"SELECT object(p) "
			+ "FROM " + getClassName() + " AS p "
			+ "ORDER BY p.name"
		).getResultList();
		
		closeEntityManagerFactory();
		
		return toRet;
	}
	
	public T findConcreteArticle (String name) {
		createEntities();
		
		TypedQuery<T> q = createQuery(
				"SELECT object(p) "
				+ "FROM " + getClassName() + " AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		T toRet = q.getSingleResult();
		
		closeEntityManagerFactory();
		
		return toRet;
	}
	
	public void save(T entity) 
			throws EntityExistsException, IllegalArgumentException, TransactionRequiredException {
		createEntities();
		
		DAOUtils.setUp(em);
		em.persist(entity);
		DAOUtils.doTransaction();
		
		closeEntityManagerFactory();
	}
	
	public void update(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		createEntities();
		
		DAOUtils.setUp(em);
		em.merge(entity);
		DAOUtils.doTransaction();
		
		closeEntityManagerFactory();
	}
	
	public void delete(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		createEntities();
		
		DAOUtils.setUp(em);
		em.remove(entity);
		DAOUtils.doTransaction();
		
		closeEntityManagerFactory();
	}
	
	public T findById(Object id) {
		createEntities();
		
		DAOUtils.setUp(em);
		T toRet = em.find(getGenericClass(), id);
		DAOUtils.doTransaction();
		
		closeEntityManagerFactory();
		return toRet;
	}
	
	protected TypedQuery<T> createQuery(String query) {		
		DAOUtils.setUp(em);
		return em.createQuery(query, getGenericClass());	
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
	
	protected void createEntityManagerFactory() {
		this.emf = Persistence.createEntityManagerFactory( System.getProperty("persistenceUnit") );
	}
	
	protected void closeEntityManagerFactory() {
		this.emf.close();
	}
	
	protected void createEntities() {
		createEntityManagerFactory();
		this.em = this.emf.createEntityManager();
	}
}
