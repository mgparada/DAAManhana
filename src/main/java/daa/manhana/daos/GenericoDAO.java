package daa.manhana.daos;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TransactionRequiredException;

public abstract class GenericoDAO<T> {
//	@PersistenceContext( unitName = "Grupo-Manhana")
//	protected EntityManager em;
	// No funciona. No se sabe por qué!???
	
	/**
	 * para el test es necesario el siguiente EntityManager..  
	 * protected EntityManager em = Persistence.createEntityManagerFactory("Grupo-Manhana").createEntityManager();
	 * algo va mal...
	 */
	
	protected EntityManager em = Persistence.createEntityManagerFactory("Grupo-Manhana").createEntityManager();
	
	public T guardar(T entidad) 
			throws EntityExistsException, IllegalArgumentException, TransactionRequiredException {
		em.persist(entidad);
		
		return entidad;
	}
	
	public T actualizar(T entidad) 
			throws IllegalArgumentException, TransactionRequiredException
	{
		return em.merge(entidad);
	}
	
	public void borrar(T entidad) 
			throws IllegalArgumentException, TransactionRequiredException
	{
		em.remove(em.merge(entidad));
	}
	
	public T buscarPorId(Object id)
	{
		return em.find(getClassName(), id);
	}
	
	private Class<T> getClassName() {
        return (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];

	}
}
