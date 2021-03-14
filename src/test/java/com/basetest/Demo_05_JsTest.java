package com.basetest;

import org.openqa.selenium.JavascriptExecutor;
import org.junit.jupiter.api.Test;

public class Demo_05_JsTest extends Demo_01_BaseTest {

    @Test
    void jsTest() throws InterruptedException {
            driver.get("https://www.12306.cn/index/");
            JavascriptExecutor jsDriver=(JavascriptExecutor) driver;
            Thread.sleep(4000);
            jsDriver.executeScript("document.getElementById('train_date').value=\"2020-01-01\"");
            Thread.sleep(1000);
            System.out.println(jsDriver.executeScript("return document.getElementById('train_date').value"));


        }
}
