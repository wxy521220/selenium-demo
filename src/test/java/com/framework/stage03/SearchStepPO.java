package com.framework.stage03;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.ArrayList;

/**
 *
 */
public class SearchStepPO extends SearchStep{

    static WebDriver driver;
    private WebElement currebtElement;

    /**
     * 操作步骤处理
     */
    @Override
    public void run(){

        System.out.println("111111");
        steps.forEach(step->{
           String key=step.keySet().iterator().next();
           if(step.keySet().contains("init")){
               //String[] value = (String[]) getValue(step, "init");
               ArrayList<String> value = (ArrayList<String>) getValue(step, "init");
               BasePage.getInstance().poInit(value.get(0),value.get(1));
           }
           if(step.keySet().contains(".")){
               String[] objectMethod=key.split("\\.");
               String object=objectMethod[0];
               String method=objectMethod[1];
               BasePage.getInstance().getPO(object).stepRun(method);
           }

        });
    }



}
