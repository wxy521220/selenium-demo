package com.basetest;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class Demo_07_BrowserTest extends Demo_01_BaseTest {


    @Test
    void browserTest(){
        driver.get("https://ceshiren.com/");
        //driver.findElement(By.xpath("//span[contains(text(),'登录')]")).click();
        driver.findElement(By.xpath("/html/body/section/div/div[1]/header/div/div/div[2]/span/button[2]/span")).click();

        WebElement login=driver.findElement(By.id("login-account-name"));
        WebElement passwd=driver.findElement(By.id("login-account-password"));
        WebElement search_button=driver.findElement(By.xpath("/html/body/section/div/div[4]/div/div/div/div[3]/div[2]/button[1]/span"));

        //清空输入框内容
        login.clear();
        //输入框输入内容
        login.sendKeys("2460765913@qq.com");
        passwd.sendKeys("521220wasd");
        //单击
        search_button.click();
    }

}
