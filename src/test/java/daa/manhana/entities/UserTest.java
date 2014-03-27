
package daa.manhana.entities;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.Test;


public class UserTest {
	@Test
	public void Test() {
		/**
		 * Deberia ser EntityManagerFactory emf = Persistence.createEntityManagerFactory("test");
		 * pero no funciona...  
		 */
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Grupo-Manhana");
		EntityManager em = emf.createEntityManager();
	}
}
