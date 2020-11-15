package com.multibrowsertest;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class BrowserTest extends BaseTest {


    @Test
    void browserTest(){
        driver.get("https://ceshiren.com/");
        //driver.findElement(By.xpath("//span[contains(text(),'��¼')]")).click();
        driver.findElement(By.xpath("/html/body/section/div/div[1]/header/div/div/div[2]/span/button[2]/span")).click();

        WebElement login=((FirefoxDriver) driver).findElementById("login-account-name");
        WebElement passwd=((FirefoxDriver) driver).findElementById("login-account-password");
        WebElement search_button=driver.findElement(By.xpath("/html/body/section/div/div[4]/div/div/div/div[3]/div[2]/button[1]/span"));

        //������������
        login.clear();
        //�������������
        login.sendKeys("2460765913@qq.com");
        passwd.sendKeys("521220wasd");
        //����
        search_button.click();
    }

}
