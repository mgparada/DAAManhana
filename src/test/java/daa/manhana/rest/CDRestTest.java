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
import org.glassfish.jersey.test.JerseyTest;
import org.junit.Before;
import org.junit.Test;

public class CDRestTest extends JerseyTest {
	@Override
	protected Application configure() {
		System.setProperty("persistenceUnit", "DAA-test");
		
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
	
	@Override
	public void tearDown() throws Exception {
		super.tearDown();
	}
	
	@Test
	public void testingFindCDById() throws IOException {
		final Response response = target("/cds/12").request().get();
		TestUtils.assertOkStatus(response);

		final daa.manhana.entities.CD cd = response.readEntity(daa.manhana.entities.CD.class);
		assertEquals(12, cd.getId());
		assertEquals("frozen", cd.getName().toLowerCase());
	}
	
	@Test
	public void testingFindAllCDs() {
		final Response response = target("/cds/name/f").request().get();
		TestUtils.assertOkStatus(response);

		final List<daa.manhana.entities.CD> books = response.readEntity(new GenericType<List<daa.manhana.entities.CD>>(){});
		assertEquals(2, books.size());
	}
}
