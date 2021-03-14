package com.basetest;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.concurrent.TimeUnit;

/**
 * 多窗口切换处理：主要是根据句柄切换
 */
public class Demo_03_WindowsChangeTest {

    private static WebDriver driver;
    @BeforeAll
    static void BeforeAll(){
        driver=new FirefoxDriver();
        //driver=new ChromeDriver();
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
    }

    /**
     * 百度账号注册场景---打开百度、切换窗口输入注册信息、窗口切换回来
     * @throws InterruptedException
     */
    @Test
    void winTest() throws InterruptedException {
        driver.get("https://www.baidu.com/");
        driver.manage().window().maximize();
        driver.findElement(By.linkText("登录")).click();
        //获取当前窗口句柄
        String windowHandle = driver.getWindowHandle();
        driver.findElement(By.linkText("立即注册")).click();
        //循环所有窗口句柄
        for(String win:driver.getWindowHandles()){
            if(!win.equals(windowHandle)){
                //切换窗口句柄
                driver.switchTo().window(win);
                System.out.println("uuu"+driver.getWindowHandle());
                //输入部分注册信息
                driver.findElement(By.id("TANGRAM__PSP_4__userName")).sendKeys("wxy1220水瓶座");
                driver.findElement(By.name("phone")).sendKeys("18645691212");
                //句柄切换到原来的窗口
                driver.switchTo().window(windowHandle);
                driver.findElement(By.id("TANGRAM__PSP_11__footerULoginBtn")).click();
                driver.findElement(By.name("userName")).sendKeys("18945098182");
                driver.findElement(By.name("password")).sendKeys("521220wasd");
                driver.findElement(By.id("TANGRAM__PSP_11__submit")).click();
            }
        }
    }



}
