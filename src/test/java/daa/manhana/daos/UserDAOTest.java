package daa.manhana.daos;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.RollbackException;

import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import daa.manhana.entities.User;

public class UserDAOTest {
	private EntityManagerFactory emf;
	
	private UserDAO userDAO;
	private EntityManager entityManager;
	
	@BeforeClass
	public static void setPersistenceUnit() {
		System.setProperty("persistenceUnit", "DAA-test");
	}
	
	@Before
	public void createEntityManager() {		
		userDAO = new UserDAO();

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
		
//		emf.close();
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
		assertNotNull("Find by id is not null", test);
		
		for ( User a : test) {
			assertNotNull(a);
		}
	}
	
	@Test
	public void testingFindUser()
	{		

		User test = userDAO.findById("aalopez");
		assertNotNull("Find User is not null", test.getName());
		
	}
	
	@Test
	public void testingCreateUser()
	{		

		userDAO.save(new User ("mauro"));
		List<User> something = userDAO.getAll();
		something.contains(new User ("mauro"));	
		
	}
	
	@Test
	public void testingDeleteUser()
	{		
		userDAO.delete(new User ("mauro"));
		List<User> something = userDAO.getAll();
		something.contains(new User ("mauro"));
		
	}

	
	
}
