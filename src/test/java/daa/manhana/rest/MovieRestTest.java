package daa.manhana.rest;

import static org.junit.Assert.assertEquals;

import java.io.IOException;
import java.util.List;

import javax.ws.rs.core.Application;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.Response;

import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.glassfish.jersey.client.ClientConfig;
import org.glassfish.jersey.server.ResourceConfig;
import org.junit.Before;
import org.junit.Test;

public class MovieRestTest extends ConfigRestTest {
	@Override
	protected Application configure() {
		System.setProperty("persistenceUnit", "DAA-test");
		
		return new ResourceConfig(Movie.class)
			.register(JacksonJsonProvider.class)
			.property("com.sun.jersey.api.json.POJOMappingFeature", Boolean.TRUE);
	}

	@Override
	protected void configureClient(ClientConfig config) {
		super.configureClient(config);
		
		config.register(JacksonJsonProvider.class);
		config.property("com.sun.jersey.api.json.POJOMappingFeature", Boolean.TRUE);
	}
	
	@Before
	public void setUp() {
		try {
			super.setUp();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testingFindMovieById() throws IOException {
		final Response response = target("/movies/2").request().get();
		TestUtils.assertOkStatus(response);

		final daa.manhana.entities.Movie movie = response.readEntity(daa.manhana.entities.Movie.class);
		assertEquals("cadena perpetua", movie.getName().toLowerCase());
		assertEquals("frank darabont", movie.getDirectors().toLowerCase());
	}
	
	@Test
	public void testingFindAllMovies() {
		final Response response = target("/movies/").request().get();
		TestUtils.assertOkStatus(response);

		final List<daa.manhana.entities.Movie> movies = response.readEntity(new GenericType<List<daa.manhana.entities.Movie>>(){});
		assertEquals(3, movies.size());
	}
	
	@Test
	public void testingFindBookByNameWithPagination() throws IOException {
		final Response response = target("/movies/name/padrino/1/1").request().get();
		TestUtils.assertOkStatus(response);

		final List<daa.manhana.entities.Movie> cds = response.readEntity(new GenericType<List<daa.manhana.entities.Movie>>(){});
		assertEquals(1, cds.size());
	}
}

