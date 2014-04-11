package daa.manhana.rest;

import static org.junit.Assert.assertEquals;

import javax.persistence.Persistence;
import javax.ws.rs.core.Response;

import daa.manhana.daos.DAOUtils;

public class TestUtils {

	public static void createEntityManagerFactory() {
		DAOUtils.setEmf(Persistence.createEntityManagerFactory("DAA-test"));
	}
	
	public static void closeEntityManagerFactory () {
		DAOUtils.getEmf().close();
	}
	
	public static void assertOkStatus(final Response response) {
		assertEquals("Unexpected status code", Response.Status.OK.getStatusCode(), response.getStatus());
	}

	public static void assertBadRequestStatus(final Response response) {
		assertEquals("Unexpected status code", Response.Status.BAD_REQUEST.getStatusCode(), response.getStatus());
	}
	
}
