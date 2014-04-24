package daa.manhana.web;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import daa.manhana.rest.TestUtils;

public class OldInterfaceWebTest {
	private static final int DEFAULT_WAIT_TIME = 1;
	private WebDriver driver;
	private StringBuffer verificationErrors = new StringBuffer();
	
//	@BeforeClass
//	public static void setUpBeforeClass() throws Exception {
//		TestUtils.createFakeContext();
//	}
	
	@Before
	public void setUp() throws Exception {
		TestUtils.createEntityManagerFactory();
		
		final String baseUrl = "http://localhost:8080/DAAManhana/";
		
		driver = new FirefoxDriver();
		driver.get(baseUrl);
//		driver.manage().addCookie(new Cookie("token", "bXJqYXRvOm1yamF0bw=="));
//		
//		// Driver will wait DEFAULT_WAIT_TIME if it doesn't find and element.
		driver.manage().timeouts().implicitlyWait(DEFAULT_WAIT_TIME, TimeUnit.SECONDS);
//		
		driver.get(baseUrl);
//		driver.findElement(By.id("people-list"));
	}
	
	@After
	public void tearDown() throws Exception {
//		TestUtils.clearTestDatabase();
		TestUtils.closeEntityManagerFactory();

		
		driver.quit();
		String verificationErrorString = verificationErrors.toString();
		if (!"".equals(verificationErrorString)) {
			fail(verificationErrorString);
		}
	}
//	@Test
//	public void testSearchNumberOfArticlesByName() throws Exception{
//
//		driver.findElement(By.id("articles")).click();
//
//        driver.findElement(By.id("search_articles")).sendKeys("a");
//        driver.findElement(By.className("img_search_2")).click();
//        // Sleep until the div we want is visible or 5 seconds is over
//        long end = System.currentTimeMillis() + 5000;
//        while (System.currentTimeMillis() < end) {
//            WebElement resultsDiv = driver.findElement(By.className("element_description_container"));
//
//            // If results have been returned, the results are displayed in a drop down.
//            if (resultsDiv.isDisplayed()) {
//              break;
//            }
//        }
////        // And now list the suggestions
//        List<WebElement> l = driver.findElements(By.className("element_description_container"));
//        
//        assertEquals("The values are not equals.", 10, l.size());
//
//        driver.quit();
//	}
//	
//	@Test
//	public void testVoidSearchArticles() throws Exception{
//
//		driver.findElement(By.id("articles")).click();
//        driver.findElement(By.className("img_search_2")).click();
//        // Sleep until the div we want is visible or 5 seconds is over
//        long end = System.currentTimeMillis() + 5000;
//        while (System.currentTimeMillis() < end) {
//            WebElement resultsDiv = driver.findElement(By.className("element_description_container"));
//
//            // If results have been returned, the results are displayed in a drop down.
//            if (resultsDiv.isDisplayed()) {
//              break;
//            }
//        }
////        // And now list the suggestions
//        List<WebElement> l = driver.findElements(By.className("element_description_container"));
//        
//        assertEquals("The values are not equals.", 10, l.size());
//
//        driver.quit();
//	}
//	
//	@Test
//	public void testSearchOneArticleCD() throws Exception{
//
//		driver.findElement(By.id("articles")).click();
//		driver.findElement(By.className("select_article")).click();
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ARROW_DOWN);
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ENTER);
//		driver.findElement(By.id("search_articles")).sendKeys("fr");
//        driver.findElement(By.className("img_search_2")).click();
//        // Sleep until the div we want is visible or 5 seconds is over
//        long end = System.currentTimeMillis() + 5000;
//        while (System.currentTimeMillis() < end) {
//            WebElement resultsDiv = driver.findElement(By.className("element_description_container"));
//
//            // If results have been returned, the results are displayed in a drop down.
//            if (resultsDiv.isDisplayed()) {
//              break;
//            }
//        }
////        // And now list the suggestions
//        List<WebElement> l = driver.findElements(By.className("element_description_container"));
//        
//        assertEquals("The values are not equals.", 1, l.size());
//
//        driver.quit();
//	}
//	
//	@Test
//	public void testSearchMovie() throws Exception{
//
//		driver.findElement(By.id("articles")).click();
//		driver.findElement(By.className("select_article")).click();
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ARROW_DOWN);
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ARROW_DOWN);
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ENTER);
//        driver.findElement(By.className("img_search_2")).click();
//        // Sleep until the div we want is visible or 5 seconds is over
//        long end = System.currentTimeMillis() + 5000;
//        while (System.currentTimeMillis() < end) {
//            WebElement resultsDiv = driver.findElement(By.className("element_description_container"));
//
//            // If results have been returned, the results are displayed in a drop down.
//            if (resultsDiv.isDisplayed()) {
//              break;
//            }
//        }
////        // And now list the suggestions
//        List<WebElement> l = driver.findElements(By.className("element_description_container"));
//        
//        assertEquals("The values are not equals.", 3, l.size());
//
//        driver.quit();
//	}
//
//	@Test
//	public void testSearchBook() throws Exception{
//
//		driver.findElement(By.id("articles")).click();
//		driver.findElement(By.className("select_article")).click();
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ARROW_DOWN);
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ARROW_DOWN);
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ARROW_DOWN);
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ENTER);
//        driver.findElement(By.className("img_search_2")).click();
//        // Sleep until the div we want is visible or 5 seconds is over
//        long end = System.currentTimeMillis() + 5000;
//        while (System.currentTimeMillis() < end) {
//            WebElement resultsDiv = driver.findElement(By.className("element_description_container"));
//
//            // If results have been returned, the results are displayed in a drop down.
//            if (resultsDiv.isDisplayed()) {
//              break;
//            }
//        }
////        // And now list the suggestions
//        List<WebElement> l = driver.findElements(By.className("element_description_container"));
//        
//        assertEquals("The values are not equals.", 3, l.size());
//
//        driver.quit();
//	}
//
//	@Test
//	public void testSearchComic() throws Exception{
//
//		driver.findElement(By.id("articles")).click();
//		driver.findElement(By.className("select_article")).click();
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ARROW_DOWN);
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ARROW_DOWN);
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ARROW_DOWN);
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ARROW_DOWN);
//		driver.findElement(By.className("select_article")).sendKeys(Keys.ENTER);
//        driver.findElement(By.className("img_search_2")).click();
//        // Sleep until the div we want is visible or 5 seconds is over
//        long end = System.currentTimeMillis() + 5000;
//        while (System.currentTimeMillis() < end) {
//            WebElement resultsDiv = driver.findElement(By.className("element_description_container"));
//
//            // If results have been returned, the results are displayed in a drop down.
//            if (resultsDiv.isDisplayed()) {
//              break;
//            }
//        }
////        // And now list the suggestions
//        List<WebElement> l = driver.findElements(By.className("element_description_container"));
//        
//        assertEquals("The values are not equals.", 2, l.size());
//
//        driver.quit();
//	}
	
	@Test
	public void testSearchWrong() throws Exception{

		driver.findElement(By.id("articles")).click();
		driver.findElement(By.id("search_articles")).sendKeys("7");
        driver.findElement(By.className("img_search_2")).click();

//        // And now list the suggestions
        List<WebElement> l = new ArrayList<>();
    	l = driver.findElements(By.className("element_description_container"));
    	assertEquals("The values are not equals.", 0, l.size());
        
        

        driver.quit();
	}
	
	private boolean waitForTextInElement(By by, String text) {
	    return new WebDriverWait(driver, DEFAULT_WAIT_TIME)
	    	.until(ExpectedConditions.textToBePresentInElementLocated(by, text));
	}

	private void verifyXpathCount(String xpath, int count) {
		try {
			assertEquals(count, driver.findElements(By.xpath(xpath)).size());
		} catch (Error e) {
			verificationErrors.append(e.toString());
		}
	}
}
