package com.framework.stage02;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;


/**
 * 错误-：data等都定义成了static，导致解析文件反序列化的时候失败
 */


public class SearchStepSelenium {
    public   List<String> data;
    public   List<HashMap<String,Object>> steps;
    static WebDriver driver;
    private WebElement currebtElement;
    private static int index=0;

    //case裂变
    //index
    //替换变量值

    /**
     * case裂变
     * @return
     */

    public  List<SearchStepSelenium> testcaseGenerate(){
        List<SearchStepSelenium> searchStepSeleniums =new ArrayList<>();
        for (int i = 0; i < data.size(); i++) {
            SearchStepSelenium newStep=new SearchStepSelenium();
            newStep.index=i;
            newStep.data=data;
            newStep.steps=steps;

            searchStepSeleniums.add(newStep);
        }

        return searchStepSeleniums;
    }

    /**
     * 替换变量值
     * @param step
     * @param key
     * @return
     */

    private Object getValue(HashMap<String,Object> step,String key){
        Object value = step.get(key);
        //todo instanceof 用法记忆
        if(value instanceof String){
            value=((String) value).replace("${data}", data.get(index));
        }

        return value;
    }
    private Object getValue(HashMap<String,Object> step,String key,Object def){
        Object value = step.getOrDefault(key,def);

        if(value instanceof String){
            value=((String) value).replace("${data}", data.get(index));
        }

        return value;
    }

    /**
     * 操作步骤处理
     */

    public void run(){
        steps.forEach(step->{
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
