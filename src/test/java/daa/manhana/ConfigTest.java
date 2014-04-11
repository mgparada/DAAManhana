package daa.manhana;
import org.junit.AfterClass;
import org.junit.BeforeClass;

import daa.manhana.rest.TestUtils;


public class ConfigTest {
	@BeforeClass
	public static void setUp() {
		TestUtils.createEntityManagerFactory();
	}
	
	@AfterClass
	public static void tearDown() {
		TestUtils.closeEntityManagerFactory();
	}
}
