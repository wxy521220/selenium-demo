package com.framework.stage04;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;


public class SearchStepSelenium  extends SearchStep{
    static WebDriver driver;
    private WebElement currebtElement;

    public void run(){
        steps.forEach(step->{
            System.out.println("当前index：---》"+index);
            System.out.println("当前key："+step.keySet().iterator().next());
            if(step.keySet().contains("firefox")){
                driver=new FirefoxDriver();
            }
            if(step.keySet().contains("quit")){
                driver.quit();
            }
            if(step.keySet().contains("implicitlyWait")){
                driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
            }
            if(step.keySet().contains("get")){
                driver.get((String) getValue(step,"get"));
        }
            if(step.keySet().contains("find")){
                List<By> by=new ArrayList<>();
                ((HashMap<String,String>)getValue(step,"find")).entrySet().forEach(stringStringEntry -> {
                    if(stringStringEntry.getKey().contains("id")){
                        by.add(By.id(stringStringEntry.getValue()));
                    }
                    if(stringStringEntry.getKey().contains("xpath")){
                        by.add(By.xpath(stringStringEntry.getValue()));
                    }

                });
                 currebtElement = driver.findElement(by.get(0));
            }
            if(step.keySet().contains("click")){
                currebtElement.click();
            }
            if(step.keySet().contains("send_keys")){
                System.out.println((String)getValue(step,"send_keys"));
                currebtElement.sendKeys((String)getValue(step,"send_keys"));
                try {
                    Thread.sleep(3000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        });
    }
}
