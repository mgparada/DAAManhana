package daa.manhana.daos;

import javax.persistence.EntityManager;
import javax.persistence.RollbackException;

public class DAOUtils {
	private static EntityManager entityManager;
	
	public static void setUp(final EntityManager em) {
		initializeEntityManager(em);
		openTransaction();
	}
	
	public static void doTransaction() {
		if (entityManager.getTransaction().isActive()) {
			try {
				entityManager.getTransaction().commit();
			} catch (RollbackException re) {
				entityManager.getTransaction().rollback();
			}
		}
		
		closeTransaction();
	}
		
	private static void initializeEntityManager(final EntityManager em) {
		entityManager = em;
	}
	
	private static void openTransaction()
	{
		entityManager.getTransaction().begin();
	}
	
	private static void closeTransaction() {
		entityManager.close();
	}
}
