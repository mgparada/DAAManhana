package daa.manhana.daos;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import daa.manhana.entities.Comic;

public class ComicDAOTest {
	private EntityManagerFactory emf;
	
	private ComicDAO comicDAO;
	private EntityManager entityManager;

	
	@Before
	public void createEntityManager() {
		emf = Persistence.createEntityManagerFactory("DAA-test");
		
		entityManager = emf.createEntityManager();
		comicDAO = new ComicDAO(emf);
	}
	
	@After
	public void closeEntityManager() {
		entityManager.close();
		emf.close();
	}	
	
	
	@Test
	public void testingFindByName() {
		List<Comic> test = comicDAO.findByName("Tintin");

		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 1", 1, test.size());
		
		assertEquals("Id is different than 15", 15, test.get(0).getId() );
	}
	
	@Test
	public void testingFindByNameNotRetrieveData() {
		List<Comic> test = comicDAO.findByName("hjjasjdiefs");
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 0", 0, test.size());
	}
	
	@Test
	public void testingFindById() {
		final int id = 16;
		final String name = "Dragon ball";
		
		Comic test = (Comic) comicDAO.findById(id);
		
		assertNotNull("Find by id is null", test);
		
		assertEquals("Comic ID are not equals", id, test.getId());
		
		assertEquals("Comic name are not equals", name.toUpperCase(), test.getName().toUpperCase());
	}
	
	
	
	@Test
	public void testingFindAll() {
		List<Comic> test = comicDAO.getAll();
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 2", 2, test.size());
	}

}
