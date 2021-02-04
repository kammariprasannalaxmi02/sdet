package OrangeHRM;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

public class Activity3O {
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
    public void exampleTestCase() {
        WebElement Username = driver.findElement(By.id("txtUsername"));
        Username.sendKeys("orange");
        WebElement password = driver.findElement(By.id("txtPassword"));
        password.sendKeys("orangepassword123");
        WebElement Login = driver.findElement(By.id("btnLogin"));
        Login.click();
        String URL = driver.getCurrentUrl();
        System.out.println(URL);
        
        
            
    }

    @AfterMethod
    public void afterMethod() {
        //Close the browser
        driver.quit();
    }
}