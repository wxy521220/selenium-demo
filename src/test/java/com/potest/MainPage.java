package com.potest;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import org.openqa.selenium.By;
import org.openqa.selenium.Cookie;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.TimeUnit;

public class MainPage extends BasePage{
      //WebDriver driver;

    public MainPage() throws IOException, InterruptedException {

        //super(driver);
        //this.driver=driver;
        this.getCookieAndogin();
    }

    public ContactPage enterContact(){
        try {
            Thread.sleep(15000);
            click(By.cssSelector(".ww_indexImg_AddMember"));

        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return new ContactPage(driver);
    }


     void getCookieAndogin() throws IOException, InterruptedException {
        driver =new FirefoxDriver();
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        driver.get("https://work.weixin.qq.com/wework_admin/loginpage_wx");
        Thread.sleep(5000);
        driver.manage().window().maximize();
        File file=new File("orderOutput.yaml");

        ObjectMapper mapper=new ObjectMapper(new YAMLFactory());
        if(!file.exists()){
            Set<Cookie> cookies = driver.manage().getCookies();
            mapper.writeValue(new File("orderOutput.yaml"), cookies);
            Thread.sleep(5000);
        }
        TypeReference typeReference=new TypeReference<List<HashMap<String,Object>>>(){};
        List<HashMap<String, Object>> cookies= (List<HashMap<String, Object>>) mapper.readValue(new File("orderOutput.yaml"),typeReference);
        cookies.forEach(
                cookieMap->{
                    driver.manage().addCookie(new Cookie(cookieMap.get("name").toString(), cookieMap.get("value").toString()));
                }
        );

        driver.navigate().refresh();
        driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);

    }
}
