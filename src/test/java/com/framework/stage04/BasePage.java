package com.framework.stage04;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;


public class BasePage {

    static BasePage instance=null;
    HashMap<String, BasePage> pages=new HashMap<>();
    WebDriver driver;
    public BasePage(WebDriver driver) {
        this.driver=driver;
    }

    public BasePage() {
    }

    public void click(By by){

        driver.findElement(by).click();
    }
    public void sendKeys(By by,String text){

        driver.findElement(by).sendKeys(text);
    }

    /**
     * 反射方法
     * @param method
     */
    public void stepRun(String method){

        //通过反射动态获取子类的所有方法
        //过滤出用例当前使用的方法，通过invoke调用自己本身
        Method methodJava = Arrays.stream(this.getClass().getMethods())
                .filter(m -> m.equals(method))
                .findFirst().get();
        try {
            methodJava.invoke(this);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    /**
     *
     * @param name
     * @return
     */
    BasePage getPO (String name){
        return pages.get(name);
    }
    
    public void poInit(String name,String className){
        try {
            //创建对象并且实例化
            BasePage pageClass = (BasePage)Class.forName(className).newInstance();
            //将实例化之后的对象放在pages中存储
            pages.put(name,pageClass);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static BasePage getInstance() {
        //todo  创建单例。存储所有的PO
        if(instance==null){
            instance=new BasePage();
        }
        return instance;
    }

}
