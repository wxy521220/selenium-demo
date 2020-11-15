package com.fristtest;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.Set;
import java.util.concurrent.TimeUnit;

public class WindowsTest {


    private static WebDriver driver;

    @BeforeAll
    static void BeforeAll(){
        driver=new FirefoxDriver();
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
    }


    @Test
    void winTest() throws InterruptedException {
        driver.get("https://www.baidu.com/");
        driver.manage().window().maximize();
        driver.findElement(By.linkText("登录")).click();

        String windowHandle = driver.getWindowHandle();
        driver.findElement(By.linkText("立即注册")).click();

        for(String win:driver.getWindowHandles()){
            if(!win.equals(windowHandle)){
                System.out.println("333");
                driver.switchTo().window(win);
                System.out.println("uuu"+driver.getWindowHandle());

                driver.findElement(By.id("TANGRAM__PSP_4__userName")).sendKeys("wxy");
                driver.findElement(By.name("phone")).sendKeys("18645691212");
//                driver.findElement(By.name("password")).sendKeys("1234qwer");
//                driver.findElement(By.id("TANGRAM__PSP_4__verifyCodeSend")).click();
//                driver.findElement(By.name("verifyCode")).sendKeys("");
//                driver.findElement(By.name("isAgree")).click();

                driver.switchTo().window(windowHandle);
                driver.findElement(By.id("TANGRAM__PSP_11__footerULoginBtn")).click();
                driver.findElement(By.name("userName")).sendKeys("18945098182");
                driver.findElement(By.name("password")).sendKeys("521220wasd");
                Thread.sleep(3000);

            }
            System.out.println("333");

        }


    }



}
