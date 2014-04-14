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

public class BookRestTest extends ConfigRestTest {
	@Override
	protected Application configure() {
		return new ResourceConfig(Book.class)
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
	public void testingFindBookById() throws IOException {
		final Response response = target("/books/9").request().get();
		TestUtils.assertOkStatus(response);

		final daa.manhana.entities.Book book = response.readEntity(daa.manhana.entities.Book.class);
		assertEquals(9, book.getId());
		assertEquals("el juego de ripper", book.getName().toLowerCase());
	}
	
	@Test
	public void testingFindAllBooks() {
		final Response response = target("/books/name/el").request().get();
		TestUtils.assertOkStatus(response);

		final List<daa.manhana.entities.Book> books = response.readEntity(new GenericType<List<daa.manhana.entities.Book>>(){});
		assertEquals(1, books.size());
	}
}
