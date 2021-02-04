package OrangeHRM;

import static org.testng.Assert.assertEquals;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

public class Activity5O {
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
        WebElement Username = driver.findElement(By.id("txtUsername"));
        Username.sendKeys("orange");
        WebElement password = driver.findElement(By.id("txtPassword"));
        password.sendKeys("orangepassword123");
        WebElement Login = driver.findElement(By.id("btnLogin"));
        Login.click();
        driver.findElement(By.linkText("My Info")).click();
        driver.findElement(By.xpath("//*[@id=\"btnSave\"]")).click();
        Thread.sleep(30);
        
      
       
    }

    @AfterMethod
    public void afterMethod() {
        //Close the browser
        driver.quit();
    }
}

