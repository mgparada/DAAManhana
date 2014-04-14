package daa.manhana.daos;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.RollbackException;

public class DAOUtils {
	private static EntityManager entityManager;
	private static EntityManagerFactory emf;
	
	public static EntityManager getEntityManager() {
		return entityManager;
	}
	
	public static EntityManagerFactory getEmf() {
		if (DAOUtils.emf == null) {
			DAOUtils.setEmf(Persistence.createEntityManagerFactory("Grupo-Manhana"));
		}
		return emf;
	}

	public static void setEmf(EntityManagerFactory emf) {
		DAOUtils.emf = emf;
	}

	public static void setUp() {
		entityManager = getEmf().createEntityManager();
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
	
	private static void openTransaction()
	{
		entityManager.getTransaction().begin();
	}
	
	protected static void closeTransaction() {
		entityManager.close();
	}
	
}
