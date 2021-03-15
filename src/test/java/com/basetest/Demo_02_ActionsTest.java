package com.basetest;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;

import javax.xml.bind.Element;
import java.util.concurrent.TimeUnit;

public class Demo_02_ActionsTest {
    private static WebDriver driver;
    private static Actions actions;

    @BeforeAll
    public static void setUp(){
        driver=new ChromeDriver();
        actions=new Actions(driver);
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
    }

    /**
     * actions
     * 左键单击、右键单击、左键双击
     */
    @Test
    public void clickTest(){
        try {
            driver.get("http://sahitest.com/demo/clicks.htm");
            //双击
            actions.doubleClick(driver.findElement(By.xpath("//input[@value='dbl click me']")));
            //单击
            actions.click(driver.findElement(By.xpath("//*[@value='click me']")));
            //右键单击
            actions.contextClick(driver.findElement(By.xpath("//*[@value='right click me']")));
            actions.perform();
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /**
     * actions的悬停功能
     */
    @Test
    public void moveTest(){
        try {
            driver.get("https://www.baidu.com");
            actions.moveToElement(driver.findElement(By.id("s-usersetting-top")));
            actions.perform();
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /**
     * actions的拖拽功能
     */

    @Test
    public void dropTest(){
        try {
            driver.get("http://sahitest.com/demo/dragDropMooTools.htm");
            WebElement elementSource=driver.findElement(By.id("dragger"));
            WebElement elementTarget=driver.findElements(By.xpath("//*[@class='item']")).get(0);
            WebElement elementTarget2=driver.findElements(By.xpath("//*[@class='item']")).get(2);
            //方式一
            actions.dragAndDrop(elementSource,elementTarget).perform();
            //方式二
            actions.clickAndHold(elementSource).moveToElement(elementTarget2).release().perform();

            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /**
     * actions的按键操作，实现ctrl+a，ctrl+C等
     */

    @Test
    public  void keyTest(){
        try {
            driver.get("http://sahitest.com/demo/label.htm");
            // //table//input[@type="textbox"]
            driver.findElements(By.xpath("//input[@type='textbox']")).get(0).sendKeys("wxy");
            actions.keyDown(Keys.CONTROL).sendKeys("a");
            actions.keyDown(Keys.CONTROL).sendKeys("c");
            actions.keyDown(driver.findElements(By.xpath("//input[@type='textbox']")).get(1),Keys.CONTROL).sendKeys("v").keyUp(Keys.CONTROL).perform();
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /**
     * actions   窗口滑动
     */
    @Test
    public  void scollTest(){
        driver.get("http://www.baidu.com");
        driver.manage().window().maximize();
        // //table//input[@type="textbox"]
        driver.findElement(By.id("kw")).sendKeys("hello");
        driver.findElement(By.id("su")).click();
        JavascriptExecutor jsDriver=(JavascriptExecutor) driver;
        jsDriver.executeScript("window.scrollBy(0,document.body.scrollHeight)");
        driver.findElement(By.xpath("//a[@class='n']")).click();
    }

    @AfterAll
    public static void tearDown(){
        driver.quit();
    }
}
