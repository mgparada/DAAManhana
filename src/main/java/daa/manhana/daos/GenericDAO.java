package daa.manhana.daos;

import java.lang.reflect.ParameterizedType;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.TransactionRequiredException;
import javax.persistence.TypedQuery;

public abstract class GenericDAO<T> {
	protected EntityManager em;
	
	public GenericDAO() {
	}
	
	public GenericDAO(EntityManager em) {
		super();
		this.em = em;
	}
	
	public void setEentityManager(EntityManager em) {
		this.em = em;
	}

	public T save(T entity) 
			throws EntityExistsException, IllegalArgumentException, TransactionRequiredException {
		em.persist(entity);
		
		return entity;
	}
	
	public T update(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		return em.merge(entity);
	}
	
	public void delete(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		em.remove(em.merge(entity));
	}
	
	public T findById(Object id) {
		return em.find(getClassName(), id);
	}
	
	protected TypedQuery<T> createQuery(String query) {
		return this.em.createQuery(query, getClassName());
	}
	
	@SuppressWarnings("unchecked")
	private Class<T> getClassName() {
        return (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];

	}
}
