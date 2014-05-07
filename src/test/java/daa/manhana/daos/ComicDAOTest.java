package daa.manhana.daos;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Before;
import org.junit.Test;

import daa.manhana.ConfigTest;
import daa.manhana.entities.Comic;

public class ComicDAOTest extends ConfigTest {
	private ComicDAO comicDAO;

	
	@Before
	public void createEntityManager() {
		System.setProperty("persistenceUnit", "DAA-test");
		
		comicDAO = new ComicDAO();
	}	
	
	@Test
	public void testingFindByName() {
		List<Comic> test = comicDAO.findByName("Batman");

		assertNotNull("Find by name is not null", test);
		
		assertEquals("Length is not 1", 1, test.size());
		
		assertEquals("Id is different than 72", 72, test.get(0).getId() );
	}
	
	@Test
	public void testingFindByNameWithPagination() {
		List<Comic> test = comicDAO.findByName("Cometas", 1, 1);
		
		assertNotNull("Find by name with pagination is not null", test);
		
		assertEquals("Length is not 1", 1, test.size());
		
		assertEquals("Id is different than 73", 73, test.get(0).getId() );
	}
	
	@Test
	public void testingFindAllWithPagination() {
		List<Comic> test = comicDAO.getAll(1, 2);
		
		assertNotNull("Find All with pagination is not null", test);
		
		assertEquals("Length is not 2", 2, test.size());
		
		assertEquals("Id is different than 72", 72, test.get(0).getId() );
	}
	
	@Test
	public void testingFindByNameNotRetrieveData() {
		List<Comic> test = comicDAO.findByName("hjjasjdiefs");
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 0", 0, test.size());
	}
	
	@Test
	public void testingFindById() {
		final int id = 71;
		final String name = "Watchmen ";
		
		Comic test = (Comic) comicDAO.findById(id);
		
		assertNotNull("Find by id is null", test);
		
		assertEquals("Comic ID are not equals", id, test.getId());
		
		assertEquals("Comic name are not equals", name.toUpperCase(), test.getName().toUpperCase());
	}
	
	
	
	@Test
	public void testingFindAll() {
		List<Comic> test = comicDAO.getAll();
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 6", 6, test.size());
	}

}
