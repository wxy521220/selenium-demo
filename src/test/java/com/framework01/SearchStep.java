package com.framework01;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class SearchStep {
    public List<String> data;
    public List<HashMap<String,Object>> steps;
    static WebDriver driver;
    private WebElement currebtElement;

    public void run(){
        System.out.println("run方法");
        steps.forEach(step->{
            if(step.keySet().contains("firefox")){
                System.out.println("2222");
                driver=new FirefoxDriver();
            }
            if(step.keySet().contains("implicitlyWait")){
                driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
            }
            if(step.keySet().contains("get")){
                driver.get((String) step.get("get"));
            }
            if(step.keySet().contains("find")){
                //todo 什么知识点？
                List<By> by=new ArrayList<>();
                ((HashMap<String,String>)step.get("find")).entrySet().forEach(stringStringEntry -> {
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
                //todo  参数化
                currebtElement.sendKeys("send_keys");
            }
        });
    }
}
