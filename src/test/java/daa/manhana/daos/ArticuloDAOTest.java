package daa.manhana.daos;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.junit.Test;

import daa.manhana.entities.Articulo;

public class ArticuloDAOTest {
	
	@Test
	public void testingFindById()
	{
		EntityManager em = Persistence.createEntityManagerFactory("Grupo-Manhana").createEntityManager();
		
		ArticuloDAO artDAO = new ArticuloDAO();
		
		Articulo art = new Articulo();
		art.setNombre("Articulo de prueba");
		
		Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Europe/Madrid"));
		Date currentDate = calendar.getTime();
		art.setFechaAlta(currentDate);
		
		// Guardar articulo en BD
		em.getTransaction().begin();
		em.persist(art);
		em.getTransaction().commit();

		Articulo test = artDAO.buscarPorId(art.getId());
		
		assertNotNull("Find by id is not null", test);;
		
		assertEquals("Article ID are not equals", art.getId(), test.getId());
		
		assertEquals("Article name are not equals", art.getNombre(), test.getNombre());
	}
	
//	@Test
//	public void testingFindByName()
//	{
//		EntityManager em = Persistence.createEntityManagerFactory("Grupo-Manhana").createEntityManager();
//		
//		ArticuloDAO artDAO = new ArticuloDAO();
//		
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
//
//		List<Articulo> test = artDAO.findByName(art.getNombre());
//		assertNotNull("Find by id is not null", test);
//		
//		for ( Articulo a : test) {
//			assertEquals("Article ID are not equals", art.getId(), a.getId());
//			
//			assertEquals("Article name are not equals", art.getNombre(), a.getNombre());
//		}
//	}
	
	@Test
	public void testingFindAll()
	{
		EntityManager em = Persistence.createEntityManagerFactory("Grupo-Manhana").createEntityManager();
		
		ArticuloDAO artDAO = new ArticuloDAO();
		
		Articulo art = new Articulo();
		art.setNombre("Articulo de prueba");
		
		Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Europe/Madrid"));
		Date currentDate = calendar.getTime();
		art.setFechaAlta(currentDate);
		
		// Guardar articulo en BD
		em.getTransaction().begin();
		em.persist(art);
		em.getTransaction().commit();

		List<Articulo> test = artDAO.getAll();
		assertNotNull("Find by id is not null", test);
		
		for ( Articulo a : test) {
			assertEquals("Article ID are not equals", art.getId(), a.getId());
			
			assertEquals("Article name are not equals", art.getNombre(), a.getNombre());
		}
	}

}
