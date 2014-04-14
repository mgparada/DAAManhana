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

public class ComicRestTest extends ConfigRestTest {
	@Override
	protected Application configure() {
		System.setProperty("persistenceUnit", "DAA-test");
		
		return new ResourceConfig(Comic.class)
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
	public void testingFindComicById() throws IOException {
		final Response response = target("/comics/16").request().get();
		TestUtils.assertOkStatus(response);

		final daa.manhana.entities.Comic comic = response.readEntity(daa.manhana.entities.Comic.class);
		assertEquals(16, comic.getId());
		assertEquals("dragon ball", comic.getName().toLowerCase());
	}
	
	@Test
	public void testingFindAllComics() {
		final Response response = target("/comics/").request().get();
		TestUtils.assertOkStatus(response);

		final List<daa.manhana.entities.Comic> comics = response.readEntity(new GenericType<List<daa.manhana.entities.Comic>>(){});
		assertEquals(2, comics.size());
	}
	
	@Test
	public void testingFindBookByNameWithPagination() throws IOException {
		final Response response = target("/comics/name/a/2/1").request().get();
		TestUtils.assertOkStatus(response);

		final List<daa.manhana.entities.Comic> cds = response.readEntity(new GenericType<List<daa.manhana.entities.Comic>>(){});
		assertEquals(2, cds.size());
	}
}
