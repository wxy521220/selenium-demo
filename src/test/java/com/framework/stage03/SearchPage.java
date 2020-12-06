package com.framework.stage03;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class SearchPage extends BasePage {

    public SearchPage(WebDriver driver){
        super(driver);
    }

    public  SearchPage search(String keyword){
        sendKeys(By.id("search-term"),keyword);
        return this;
    }
}
