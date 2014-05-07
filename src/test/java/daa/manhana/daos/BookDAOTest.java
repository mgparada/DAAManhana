package daa.manhana.daos;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Before;
import org.junit.Test;

import daa.manhana.ConfigTest;
import daa.manhana.entities.Book;

public class BookDAOTest extends ConfigTest {	
	private BookDAO bookDAO;
	
	@Before
	public void createEntityManager() {
		bookDAO = new BookDAO();
	}	
	
	@Test
	public void testingFindByName() {
		List<Book> test = bookDAO.findByName("JUEGO");
		
		assertNotNull("Find by name is not null", test);
		
		assertEquals("Length is not 3", 3, test.size());
		
		assertEquals("Id is different than 34", 34, test.get(0).getId() );
	}
	
	@Test
	public void testingFindByNameWithPagination() {
		List<Book> test = bookDAO.getAll(2, 1);
		
		assertNotNull("Find by name with pagination is not null", test);
		
		assertEquals("Length is not 2", 1, test.size());
		
		assertEquals("Id is different than 43", 43, test.get(0).getId() );
	}
	
	@Test
	public void testingFindAllWithPagination() {
		List<Book> test = bookDAO.getAll(2, 2);
		
		assertNotNull("Find All with pagination is not null", test);
		
		assertEquals("Length is not 2", 2, test.size());
		
		assertEquals("Id is different than 48", 48, test.get(0).getId() );
	}
	
	@Test
	public void testingFindByNameNotRetrieveData() {
		List<Book> test = bookDAO.findByName("hjjasjdiefs");
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 0", 0, test.size());
	}
	
	@Test
	public void testingFindById() {
		final int id = 35;
		final String name = "DIVERGENT BOOK 1";
		
		Book test = bookDAO.findById(id);
		
		assertNotNull("Find by id is null", test);
		
		assertEquals("Book ID are not equals", id, test.getId());
		
		assertEquals("Book name are not equals", name.toUpperCase(), test.getName().toUpperCase());
	}
	
	
	
	@Test
	public void testingFindAll() {
		List<Book> test = bookDAO.getAll();
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 23", 23, test.size());
	}

}
