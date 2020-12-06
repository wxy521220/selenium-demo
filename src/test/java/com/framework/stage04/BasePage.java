package com.framework.stage04;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;


public class BasePage {

    static BasePage instance=null;
    HashMap<String, BasePage> pages=new HashMap<>();
    HashMap<String, List<HashMap<String,Object>>> yamlSource=new HashMap<>();
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

       /* //通过反射动态获取子类的所有方法
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
        }*/
        System.out.println("当前方法为："+method);
        //获取测试步骤
        List<HashMap<String,Object>> steps=yamlSource.get(method);
        SearchStep searchStep=new SearchStepSelenium();
        searchStep.steps=steps;
        searchStep.data=Arrays.asList("");
        searchStep.run();



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
            //BasePage pageClass = (BasePage)Class.forName(className).newInstance();

            BasePage pageClass=new BasePage();
            //错误
            //ObjectMapper mapper=new ObjectMapper();
            //正确
            ObjectMapper mapper=new ObjectMapper(new YAMLFactory());
            TypeReference<HashMap<String, List<HashMap<String, Object>>>> typeReference=
                   new TypeReference<HashMap<String, List<HashMap<String, Object>>>>() {};
            pageClass.yamlSource=mapper.readValue(
                    ParamsTest.class.getResourceAsStream(String.format("/%s",className)),
                    typeReference);
            //将实例化之后的对象放在pages中存储
            pages.put(name,pageClass);
            pageClass.stepRun("init");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

/*    void poInit(String name, String className){
        try {
            //动态创建类，并实例化为一个对象
//            BasePage pageClass = (BasePage) Class.forName(className).getDeclaredConstructor().newInstance();
            BasePage pageClass=new BasePage();
            ObjectMapper mapper=new ObjectMapper(new YAMLFactory());
            TypeReference<HashMap<String, List<HashMap<String, Object>>>> typeReference=
                    new TypeReference<HashMap<String, List<HashMap<String, Object>>>>() {};
//            pageClass.yamlSource=mapper.readValue(
//                    BasePage.class.getResourceAsStream(String.format("/framework/%s",className)),
//                    typeReference);
            pageClass.yamlSource=mapper.readValue(
                    BasePage.class.getResourceAsStream(String.format("/framework/%s",className)),
                    typeReference);

//            pageClass.getPO("main_po.yaml").stepRun("search");

            pages.put(name, pageClass);
            pageClass.stepRun("init");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }*/

    public static BasePage getInstance() {
        //todo  创建单例。存储所有的PO
        if(instance==null){
            instance=new BasePage();
        }
        return instance;
    }

}
