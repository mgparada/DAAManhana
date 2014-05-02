package daa.manhana.daos;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Before;
import org.junit.Test;

import daa.manhana.ConfigTest;
import daa.manhana.entities.User;

public class UserDAOTest extends ConfigTest {
	private UserDAO userDAO;
	
	@Before
	public void createEntityManager() {
		userDAO = new UserDAO();
	}	
	
	@Test
	public void testingFindByName() {
		List<User> test = userDAO.findByName("a");
		assertNotNull("Find by name is not null", test);
		
	}
	
	@Test
	public void testingFindByNameNotRetrieveData() {
		List<User> test = userDAO.findByName("bbb");
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 0", 0, test.size());
	}
	
	@Test
	public void testingFindAll()
	{		
		List<User> test = userDAO.getAll();
		assertNotNull("Find by id is null", test);
		
		for ( User a : test) {
			assertNotNull(a);
		}
	}
	
	@Test
	public void testingFindUser() {		
		User test = userDAO.findById("aalopez");
		assertNotNull("Find User is not null", test.getName());
		
	}
}
