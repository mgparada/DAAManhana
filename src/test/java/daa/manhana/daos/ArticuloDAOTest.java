package daa.manhana.daos;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import daa.manhana.entities.Articulo;

public class ArticuloDAOTest {
	
	private static EntityManagerFactory emf;
	private static EntityManager em;
	private static ArticuloDAO artDAO;
	
	@BeforeClass
	public static void createEntityManagerFactory()
	{
		emf = Persistence.createEntityManagerFactory("DAA-test");
		artDAO = new ArticuloDAO();
	}
	
	@Before
	public void createEntityManager()
	{
		em = emf.createEntityManager();
//		em.createQuery("TRUNCATE TABLE Articulo").executeUpdate();
//		em.createQuery("ALTER TABLE Articulo AUTO_INCREMENT = 1;").executeUpdate();
	}
	
	@After
	public void closeEntityManager()
	{
		em.close();
	}	
	
	@AfterClass
	public static void closeEntityManagerFactory()
	{
		emf.close();
	}
	
	@Test
	public void testingFindById()
	{
		System.out.println("----- testingFindById -----");
		Articulo art = new Articulo();
		art.setNombre("Articulo de prueba");
		
		Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Europe/Madrid"));
		Date currentDate = calendar.getTime();
		art.setFechaAlta(currentDate);
		
		// Guardar articulo en BD
		em.getTransaction().begin();
		em.persist(art);
		em.getTransaction().commit();

		System.out.println(art.getId());
		Articulo test = artDAO.buscarPorId(art.getId());
		
		assertNotNull("Find by id is null", test);;
		
		assertEquals("Article ID are not equals", art.getId(), test.getId());
		
		assertEquals("Article name are not equals", art.getNombre(), test.getNombre());
	}
	
	@Test
	public void testingFindByName()
	{		
		System.out.println("----- testingFindByName -----");

		List<Articulo> test = artDAO.findByName("alg");
		assertNotNull("Find by id is not null", test);
		
		for ( Articulo a : test) {
			assertNotNull("Article is NULL", a);
		}
	}
	
	@Test
	public void testingFindAll()
	{		
		System.out.println("----- testingFindAll -----");
//		Articulo art = new Articulo();
//		art.setNombre("Articulo de prueba");
//		
//		Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Europe/Madrid"));
//		Date currentDate = calendar.getTime();
//		art.setFechaAlta(currentDate);
//		
//		// Guardar articulo en BD
//		em.getTransaction().begin();
//		em.persist(art);
//		em.getTransaction().commit();

		List<Articulo> test = artDAO.getAll();
		assertNotNull("Find by id is not null", test);
		
		for ( Articulo a : test) {
			assertNotNull(a);
		}
	}

}
