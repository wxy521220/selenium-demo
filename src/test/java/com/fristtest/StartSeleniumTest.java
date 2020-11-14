package com.fristtest;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.concurrent.TimeUnit;

public class StartSeleniumTest {


    public  static  WebDriver driver;
    public  static WebDriverWait wait;
    @BeforeAll
    static void getDriver(){
        driver=new FirefoxDriver();
        //隐式等待：针对全局
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        wait = new WebDriverWait(driver,5);
    }
    @Test
    public  void startSelenium() throws InterruptedException {
        //设置浏览器路径
        //在设置了path环境变量之后可以不写浏览器路径
        //System.setProperty("webdriver.firefox.bin", "D:\\software\\firefox\\Mozilla Firefox\\firefox.exe");

        driver.get("https://ceshiren.com/");
        //driver.findElement(By.xpath("//span[contains(text(),'登录')]")).click();
        driver.findElement(By.xpath("/html/body/section/div/div[1]/header/div/div/div[2]/span/button[2]/span")).click();



        WebElement login=((FirefoxDriver) driver).findElementById("login-account-name");
        WebElement passwd=((FirefoxDriver) driver).findElementById("login-account-password");
        WebElement search_button=((FirefoxDriver) driver).findElement(By.xpath("/html/body/section/div/div[4]/div/div/div/div[3]/div[2]/button[1]/span"));

        //清空输入框内容
        login.clear();
        //输入框输入内容
        login.sendKeys("2460765913@qq.com");
        passwd.sendKeys("521220wasd");
        //单击
        search_button.click();
        Thread.sleep(3000);
    }

    /*
    显示等待
     */

    @Test
    public void waitTest(){
        driver.get("https://ceshiren.com/");
        //driver.findElement(By.xpath("/html/body/section/div/div[1]/header/div/div/div[2]/span/button[2]/span")).click();
        WebElement webElement = wait.until(ExpectedConditions.elementToBeClickable(By.xpath("/html/body/section/div/div[1]/header/div/div/div[2]/span/button[2]/span")));
        webElement.click();

    }

    @AfterAll
    static void teardown(){
        driver.quit();
    }



}
