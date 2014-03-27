package daa.manhana.daos;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import daa.manhana.entities.Book;

public class BookDAOTest {
	private EntityManagerFactory emf;
	
	private BookDAO bookDAO;
	private EntityManager entityManager;

	
	@Before
	public void createEntityManager() {
		emf = Persistence.createEntityManagerFactory("DAA-test");
		
		entityManager = emf.createEntityManager();
		bookDAO = new BookDAO(entityManager);
	}
	
	@After
	public void closeEntityManager() {
		entityManager.close();
		emf.close();
	}	
	
	
	@Test
	public void testingFindByName() {
		List<Book> test = bookDAO.findByName("JUEGO");
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 1", 1, test.size());
		
		assertEquals("Id is different than 9", 9, test.get(0).getId() );
	}
	
	@Test
	public void testingFindByNameNotRetrieveData() {
		List<Book> test = bookDAO.findByName("bbb");
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 0", 0, test.size());
	}
	
	@Test
	public void testingFindById() {
		final int id = 10;
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
		
		assertEquals("Length is not 3", 3, test.size());
	}

}
