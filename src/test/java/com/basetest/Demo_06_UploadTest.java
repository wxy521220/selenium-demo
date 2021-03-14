package com.basetest;

import com.multibrowsertest.BaseTest;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import java.util.concurrent.TimeUnit;

/**
 * 文件上传处理
 */

public class Demo_06_UploadTest extends BaseTest {

    @Test
    void uploadTest() throws InterruptedException {
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        driver.get("https://www.baidu.com");
        driver.findElement(By.cssSelector(".soutu-btn")).click();
        Thread.sleep(3000);
        driver.findElement(By.cssSelector(".upload-pic")).sendKeys("G:\\timg.jpg");
        Thread.sleep(8000);
    }
}
