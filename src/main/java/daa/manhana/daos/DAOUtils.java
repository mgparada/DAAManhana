package daa.manhana.daos;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

public class DAOUtils {
	private static EntityManagerFactory entityManagerFactory;

	public static EntityManagerFactory getEntityManagerFactory() {
		return entityManagerFactory;
	}

	public static void setEntityManagerFactory(EntityManagerFactory emf) {
		DAOUtils.entityManagerFactory = emf;
	}
	
	public static EntityManager createEntityManager() {
		return DAOUtils.entityManagerFactory.createEntityManager();
	}

	
}
