package com.potest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class ContactPage extends BasePage{


    public ContactPage(WebDriver driver) {

        //todo 二者效果相同  为什么？
        this.driver=driver;
        //super(driver);
    }

    public ContactPage addMember(String name, String accId, String mobile){
        sendKeys(By.id("username"),name);
        sendKeys(By.id("memberAdd_acctid"),accId);
        sendKeys(By.id("memberAdd_phone"),mobile);
        click(By.cssSelector(".js_btn_save"));
        return this;
    }

    public ContactPage addDep(String depName){
        return this;
    }
}
