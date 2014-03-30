package daa.manhana.daos;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import daa.manhana.entities.CD;

public class CDDAOTest {
	private EntityManagerFactory emf;
	
	private CDDAO CDDAO;

	
	@Before
	public void createEntityManager() {
		emf = Persistence.createEntityManagerFactory("DAA-test");
		
		CDDAO = new CDDAO(emf);
	}
	
	@After
	public void closeEntityManager() {
		emf.close();
	}	
	
	
	@Test
	public void testingFindByName() {
		List<CD> test = CDDAO.findByName("Fary");

		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 1", 1, test.size());
		
		assertEquals("Id is different than 13", 13, test.get(0).getId() );
	}
	
	@Test
	public void testingFindByNameNotRetrieveData() {
		List<CD> test = CDDAO.findByName("hjjasjdiefs");
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 0", 0, test.size());
	}
	
	@Test
	public void testingFindById() {
		final int id = 14;
		final String name = "Por Pasodobles Por Sevillanas";
		
		CD test = CDDAO.findById(id);
		
		assertNotNull("Find by id is null", test);
		
		assertEquals("CD ID are not equals", id, test.getId());
		
		assertEquals("CD name are not equals", name.toUpperCase(), test.getName().toUpperCase());
	}
	
	
	
	@Test
	public void testingFindAll() {
		List<CD> test = CDDAO.getAll();
		assertNotNull("Find by id is not null", test);
		
		assertEquals("Length is not 3", 3, test.size());
	}

}
