package com.framework.stage03;

import org.openqa.selenium.By;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.concurrent.TimeUnit;

public class MainPage extends BasePage{
    /**
     * 初始化MainPage的时候首先要得到该页面
     */

    public MainPage(){

        driver =new FirefoxDriver();
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        driver.get("https://ceshiren.com/");
    }

    public SearchPage search(){
       click(By.id("search-button"));
        return new SearchPage(driver);
    }
}
