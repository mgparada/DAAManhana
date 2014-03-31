package daa.manhana.rest;

import static org.junit.Assert.assertEquals;

import javax.ws.rs.core.Response;

public class TestUtils {

	public static void assertOkStatus(final Response response) {
		assertEquals("Unexpected status code", Response.Status.OK.getStatusCode(), response.getStatus());
	}

	public static void assertBadRequestStatus(final Response response) {
		assertEquals("Unexpected status code", Response.Status.BAD_REQUEST.getStatusCode(), response.getStatus());
	}
	
}
