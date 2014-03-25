package daa.manhana.entities;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.Test;


public class ArticuloTest {
	@Test
	public void Test() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Grupo-Manhana");
		EntityManager em = emf.createEntityManager();
	}
}
