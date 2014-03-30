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
	private final EntityManagerFactory emf;
	
	public GenericDAO() {
		this.emf = Persistence.createEntityManagerFactory("Grupo-Manhana");
	}
	
	public GenericDAO(EntityManagerFactory emf) {
		this.emf = emf;
	}
	
	private EntityManager createEntityManager() {
		return this.emf.createEntityManager();
	}

	public List<T> findByName(String name) {
		TypedQuery<T> q = createQuery(
				"SELECT object(p) "
				+ "FROM " + getClassName() + " AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		return (List<T>) q.getResultList();
	}
	
	public List<T> getAll() {
		return createQuery(
			"SELECT object(p) "
			+ "FROM " + getClassName() + " AS p "
			+ "ORDER BY p.name"
		).getResultList();
	}
	
	public T findCOncreteArticle (String name) {
		TypedQuery<T> q = createQuery(
				"SELECT object(p) "
				+ "FROM " + getClassName() + " AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		return q.getSingleResult();
	}
	
	public void save(T entity) 
			throws EntityExistsException, IllegalArgumentException, TransactionRequiredException {
		
		final EntityManager em = createEntityManager();
		
		DAOUtils.setUp(em);
		em.persist(entity);
		DAOUtils.doTransaction();
	}
	
	public void update(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		
		final EntityManager em = createEntityManager();
		
		DAOUtils.setUp(em);
		em.merge(entity);
		DAOUtils.doTransaction();
	}
	
	public void delete(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		
		final EntityManager em = createEntityManager();
		
		DAOUtils.setUp(em);
		em.remove(entity);
		DAOUtils.doTransaction();
	}
	
	public T findById(Object id) {
		final EntityManager em = createEntityManager();
		
		DAOUtils.setUp(em);
		T toRet = em.find(getGenericClass(), id);
		DAOUtils.doTransaction();
		
		return toRet;
	}
	
	protected TypedQuery<T> createQuery(String query) {
		final EntityManager em = createEntityManager();
		
		DAOUtils.setUp(em);
		TypedQuery<T> result = em.createQuery(query, getGenericClass());
		
		return result;
	}
	
	@SuppressWarnings("unchecked")
	protected Class<T> getGenericClass() {
        return (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];

	}
	
	protected String getClassName() {
		Class<T> extendedClass = getGenericClass();
		
		return extendedClass.getName();
	}
}
