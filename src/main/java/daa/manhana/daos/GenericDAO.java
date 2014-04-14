package daa.manhana.daos;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.TransactionRequiredException;
import javax.persistence.TypedQuery;

public class GenericDAO<T> {
	public GenericDAO() {
	}
	
	public List<T> findByName(String name) {
		DAOUtils.setUp();
		
		TypedQuery<T> q = createQuery(
				"SELECT object(p) "
				+ "FROM " + getClassName() + " AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		List<T> toRet = (List<T>) q.getResultList();
		
		DAOUtils.closeTransaction();
		
		return toRet;
	}
	
	public List<T> getAll() {		
		List<T> toRet = createQuery(
			"SELECT object(p) "
			+ "FROM " + getClassName() + " AS p "
			+ "ORDER BY p.name"
		).getResultList();
		
		DAOUtils.closeTransaction();
		
		return toRet;
	}
	
	public T findConcreteObject (String name) {
		TypedQuery<T> q = createQuery(
				"SELECT object(p) "
				+ "FROM " + getClassName() + " AS p "
				+ "WHERE p.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		T toRet = q.getSingleResult();
		
		DAOUtils.closeTransaction();
		
		return toRet;
	}
	
	public void save(T entity) 
			throws EntityExistsException, IllegalArgumentException, TransactionRequiredException {
		DAOUtils.setUp();
		DAOUtils.getEntityManager().persist(entity);
		DAOUtils.doTransaction();
	}
	
	public void update(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {
		
		DAOUtils.setUp();
		DAOUtils.getEntityManager().merge(entity);
		DAOUtils.doTransaction();
	}
	
	public void delete(T entity) 
			throws IllegalArgumentException, TransactionRequiredException {		
		DAOUtils.setUp();
		DAOUtils.getEntityManager().remove(entity);
		DAOUtils.doTransaction();
	}
	
	public T findById(Object id) {
		DAOUtils.setUp();
		T toRet = DAOUtils.getEntityManager().find(getGenericClass(), id);
		DAOUtils.doTransaction();
		
		return toRet;
	}
	
	protected TypedQuery<T> createQuery(String query) {		
		DAOUtils.setUp();
		return DAOUtils.getEntityManager().createQuery(query, getGenericClass());	
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
}
