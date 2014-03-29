package daa.manhana.daos;

import java.lang.reflect.ParameterizedType;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.RollbackException;
import javax.persistence.TransactionRequiredException;
import javax.persistence.TypedQuery;

public abstract class GenericDAO<T> {
	private final EntityManagerFactory emf;
	protected EntityManager em;
	
	public GenericDAO() {
		this.emf = Persistence.createEntityManagerFactory("Grupo-Manhana");
		this.em = emf.createEntityManager();
	}
	
	public GenericDAO(EntityManagerFactory emf) {
		this.emf = emf;
		
		if (this.em == null)
			this.em = this.emf.createEntityManager();
	}
	
	public void setEentityManager(EntityManager em) {
		this.em = em;
	}

	public void save(T entity) 
			throws EntityExistsException, IllegalArgumentException, TransactionRequiredException {
		
		persist(entity);
		
//		doTransaction();
	}
	
	public void update(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		
		em.merge(entity);
		
		doTransaction();
	}
	
	public void delete(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		em.remove(em.merge(entity));
		
		doTransaction();
	}
	
	public T findById(Object id) {
		
		em.getTransaction().begin();
		T toRet = em.find(getClassName(), id);
		em.getTransaction().commit();
		
		return toRet;
	}
	
	protected TypedQuery<T> createQuery(String query) {
		return this.em.createQuery(query, getClassName());
	}
	
	@SuppressWarnings("unchecked")
	private Class<T> getClassName() {
        return (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];

	}
	
	private void openTransaction()
	{
		em.getTransaction().begin();
	}
	
	private void doTransaction() {
//		openTransaction();
		
		if (em.getTransaction().isActive()) {
			try {
				em.getTransaction().commit();
			} catch (RollbackException re) {
				em.getTransaction().rollback();
			}
		}
	}
	
	private void persist(T entity) {
		openTransaction();
		
		em.persist(entity);
		
		doTransaction();
	}
}
