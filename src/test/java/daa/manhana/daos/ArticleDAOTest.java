package daa.manhana.daos;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.RollbackException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import daa.manhana.entities.Article;

public class ArticleDAOTest {
	private EntityManagerFactory emf;
	
	private ArticleDAO artDAO;
	private EntityManager entityManager;

	
	@Before
	public void createEntityManager() {
		emf = Persistence.createEntityManagerFactory("DAA-test");
		
		entityManager = emf.createEntityManager();
		artDAO = new ArticleDAO(entityManager);

		entityManager.getTransaction().begin();
	}
	
	@After
	public void closeEntityManager() {
		if (entityManager.getTransaction().isActive()) {
			try {
				entityManager.getTransaction().commit();
			} catch (RollbackException re) {
				entityManager.getTransaction().rollback();
			}
		}
		entityManager.close();
		
		emf.close();
	}	
	
	@Test
	public void testingFindById() {		
		final int id = 1;
		final String name = "El Padrino";
		
		Article test = artDAO.findById(id);
		
		assertNotNull("Find by id is null", test);
		
		assertEquals("Article ID are not equals", id, test.getId());
		
		assertEquals("Article name are not equals", name.toUpperCase(), test.getName().toUpperCase());
	}
	
	@Test
	public void testingFindByName() {
		List<Article> test = artDAO.findByName("El");
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 3", 3, test.size());
		
		assertEquals("Id is different than 1", 1, test.get(0).getId() );
	}
	
	@Test
	public void testingFindByNameNotRetrieveData() {
		List<Article> test = artDAO.findByName("bbb");
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 0", 0, test.size());
	}
	
	@Test
	public void testingFindAll() {
		List<Article> test = artDAO.getAll();
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 8", 8, test.size());
	}

}
