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

public class CDRestTest extends ConfigRestTest {
	@Override
	protected Application configure() {
		
		return new ResourceConfig(CD.class)
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
	public void testingFindCDById() throws IOException {
		final Response response = target("/cds/66").request().get();
		TestUtils.assertOkStatus(response);

		final daa.manhana.entities.CD cd = response.readEntity(daa.manhana.entities.CD.class);
		assertEquals(66, cd.getId());
		assertEquals("frozen", cd.getName().toLowerCase());
	}
	
	@Test
	public void testingFindAllCDs() {
		final Response response = target("/cds/name/f").request().get();
		TestUtils.assertOkStatus(response);

		final List<daa.manhana.entities.CD> books = response.readEntity(new GenericType<List<daa.manhana.entities.CD>>(){});
		assertEquals(2, books.size());
	}
	
	@Test
	public void testingFindBookByNameWithPagination() throws IOException {
		final Response response = target("/cds/name/Frozen/1/1").request().get();
		TestUtils.assertOkStatus(response);

		final List<daa.manhana.entities.CD> cds = response.readEntity(new GenericType<List<daa.manhana.entities.CD>>(){});
		assertEquals(1, cds.size());
	}
	
	@Test
	public void testingFindAllWithPagination() {
		final Response response = target("/cds/1/2").request().get();
		TestUtils.assertOkStatus(response);

		final List<daa.manhana.entities.CD> cds = response.readEntity(new GenericType<List<daa.manhana.entities.CD>>(){});
		assertEquals(1, cds.size());
	}
}
