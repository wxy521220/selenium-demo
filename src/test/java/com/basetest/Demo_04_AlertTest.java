package com.basetest;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Actions;

import java.util.concurrent.TimeUnit;

/**
 * 弹窗处理
 */

public class Demo_04_AlertTest extends Demo_01_BaseTest {

    @Test
    void alertTest() throws InterruptedException {
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        driver.get("https://www.runoob.com/try/try.php?filename=jqueryui-api-droppable");
        driver.switchTo().frame("iframeResult");
        Actions actions=new Actions(driver);
        Thread.sleep(1000);

        //actions的动作之后必须使用perform()来终止操作使操作生效！！！

        actions.dragAndDrop(driver.findElement(By.id("draggable")),driver.findElement(By.id("droppable"))).perform();
        Thread.sleep(1000);

        //getText()获取弹框内的文字信息
        System.out.println(driver.switchTo().alert().getText());

        driver.switchTo().alert().accept();
        driver.switchTo().parentFrame();
        Thread.sleep(1000);
        driver.findElement(By.id("submitBTN")).click();
        Thread.sleep(3000);
        System.out.println(driver.findElement(By.id("submitBTN")).getText());


    }
}
