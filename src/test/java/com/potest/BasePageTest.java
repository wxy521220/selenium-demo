package com.potest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class BasePageTest {

    WebDriver driver;
    public BasePageTest(WebDriver driver) {
        this.driver=driver;
    }

    public void click(WebElement element){
        element.click();
    }
    public void sendKeys(WebElement element,String text){
        element.sendKeys(text);
    }
    public WebElement findElement(By by){
        WebElement webElement=driver.findElement(by);
        return webElement;
    }
}
