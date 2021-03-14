package com.multibrowsertest;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class BaseTest {
    public static WebDriver driver;

    @BeforeAll
    static void initData(){
        //根据传入的不同参数，获取不同浏览器的driver
        String browserName = System.getProperty("browser");
        if("chrome".equals(browserName)){
            //System.setProperty("","");
            driver=new ChromeDriver();

        }else if("firefox".equals(browserName)){
            //System.setProperty("webdriver.firefox.bin", "D:\\software\\firefox\\Mozilla Firefox\\firefox.exe");
            driver=new FirefoxDriver();
        }
    }

    @AfterAll
    static void terDown(){
        driver.quit();
    }
}
