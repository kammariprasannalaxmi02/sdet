package OrangeHRM;

import org.testng.Assert;
import org.openqa.selenium.firefox.*;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;


public class Activity1O {
    WebDriver driver;
    
    @BeforeMethod
    public void beforeMethod() {
        //Create a new instance of the Firefox driver
    	System.setProperty("webdriver.gecko.driver","C:\\Users\\KammariLaxmi\\Desktop\\Reskilling\\geckodriver-v0.29.0-win64\\geckodriver.exe ");
        driver = new FirefoxDriver();
        
        //Open browser
        driver.get("http://alchemy.hguy.co/orangehrm");
    }

    @Test
    public void exampleTestCase() throws InterruptedException {
        // Check the title of the page
        String title = driver.getTitle();
            
        //Print the title of the page
        System.out.println("Page title is: " + title);
            
            //Assertion for page title
        Assert.assertEquals("OrangeHRM", title);
        Thread.sleep(20);
       
        Assert.assertEquals(driver.getTitle(), "OrangeHRM");
    }

    @AfterMethod
    public void afterMethod() {
        //Close the browser
        driver.quit();
    }

}
