package daa.manhana.rest;

import org.glassfish.jersey.test.JerseyTest;
import org.junit.AfterClass;
import org.junit.BeforeClass;

public class ConfigRestTest extends JerseyTest {
		@BeforeClass
		public static void createFactory() {
			TestUtils.createEntityManagerFactory();
		}
		
		@AfterClass
		public static void closeFactory() {
			TestUtils.closeEntityManagerFactory();
		}
	}
