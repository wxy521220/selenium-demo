package com.potest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class BasePage {

    WebDriver driver;
    public BasePage(WebDriver driver) {
        this.driver=driver;
    }

    /**
     * 第一次封装，不够简洁
     */

/*    public void click(WebElement element){
        element.click();
    }
    public void sendKeys(WebElement element,String text){
        element.sendKeys(text);
    }
    public WebElement findElement(By by){
        WebElement webElement=driver.findElement(by);
        return webElement;
    }*/
    public void click(By by){
        driver.findElement(by).click();
    }
    public void sendKeys(By by,String text){
        driver.findElement(by).sendKeys(text);
    }
}
