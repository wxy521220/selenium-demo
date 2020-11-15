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
        //��ʽ�ȴ������ȫ��
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        wait = new WebDriverWait(driver,5);
    }
    @Test
    public  void startSeleniumTest() throws InterruptedException {
        //���������·��
        //��������path��������֮����Բ�д�����·��
        //System.setProperty("webdriver.firefox.bin", "D:\\software\\firefox\\Mozilla Firefox\\firefox.exe");

        driver.get("https://ceshiren.com/");
        //driver.findElement(By.xpath("//span[contains(text(),'��¼')]")).click();
        driver.findElement(By.xpath("/html/body/section/div/div[1]/header/div/div/div[2]/span/button[2]/span")).click();



        WebElement login=((FirefoxDriver) driver).findElementById("login-account-name");
        WebElement passwd=((FirefoxDriver) driver).findElementById("login-account-password");
        WebElement search_button=((FirefoxDriver) driver).findElement(By.xpath("/html/body/section/div/div[4]/div/div/div/div[3]/div[2]/button[1]/span"));

        //������������
        login.clear();
        //�������������
        login.sendKeys("2460765913@qq.com");
        passwd.sendKeys("521220wasd");
        //����
        search_button.click();
        Thread.sleep(3000);
    }

    /*
    ��ʾ�ȴ�
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
