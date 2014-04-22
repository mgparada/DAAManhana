package daa.manhana.daos;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

public class DAOUtils {
//	private static EntityManager entityManager;
	private static EntityManagerFactory entityManagerFactory;
	
//	public static EntityManager getEntityManager() {
//		return entityManager;
//	}
	
	public static EntityManagerFactory getEntityManagerFactory() {
		return entityManagerFactory;
	}

	public static void setEntityManagerFactory(EntityManagerFactory emf) {
		DAOUtils.entityManagerFactory = emf;
	}
	
	public static EntityManager createEntityManager() {
		return DAOUtils.entityManagerFactory.createEntityManager();
	}

//	public static void setUp() {
//		entityManager = getEntityManagerFactory().createEntityManager();
//		openTransaction();
//	}
//	
//	public static void doTransaction() {
//		if (entityManager.getTransaction().isActive()) {
//			try {
//				entityManager.getTransaction().commit();
//			} catch (RollbackException re) {
//				entityManager.getTransaction().rollback();
//			}
//		}
//		
//		closeTransaction();
//	}
//	
//	private static void openTransaction()
//	{
//		entityManager.getTransaction().begin();
//	}
//	
//	protected static void closeTransaction() {
//		entityManager.close();
//	}
	
}
