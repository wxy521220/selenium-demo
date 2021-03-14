package com.wechat;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Cookie;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class webTest {


    @Test
    void getCookie() throws IOException, InterruptedException {

        WebDriver driver=new FirefoxDriver();

        driver.get("https://work.weixin.qq.com/wework_admin/loginpage_wx");


        Thread.sleep(15000);
        Set<Cookie> cookies = driver.manage().getCookies();
        ObjectMapper mapper=new ObjectMapper(new YAMLFactory());
        //todo 路径加/
        mapper.writeValue(new File("orderOutput.yaml"), cookies);


    }

    @Test
    void loginTest() throws IOException {
        WebDriver driver=new FirefoxDriver();

        driver.get("https://work.weixin.qq.com/wework_admin/loginpage_wx");
        //隐式等待，默认每5秒轮询一次
        driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);

        ObjectMapper mapper=new ObjectMapper(new YAMLFactory());
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


    @Test
    void addUserTest() throws IOException, InterruptedException {

        WebDriver driver=new FirefoxDriver();

        driver.get("https://work.weixin.qq.com/wework_admin/loginpage_wx");
        driver.manage().window().maximize();
        //隐式等待，默认每5秒轮询一次
        driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);

        ObjectMapper mapper=new ObjectMapper(new YAMLFactory());
        TypeReference typeReference=new TypeReference<List<HashMap<String,Object>>>(){};
        List<HashMap<String, Object>> cookies= (List<HashMap<String, Object>>) mapper.readValue(new File("orderOutput.yaml"),typeReference);
        cookies.forEach(
                cookieMap->{
                    driver.manage().addCookie(new Cookie(cookieMap.get("name").toString(), cookieMap.get("value").toString()));
                }
        );

        driver.navigate().refresh();
        driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);
        driver.findElement(By.cssSelector(".ww_indexImg_AddMember")).click();
        Thread.sleep(1000);
        driver.findElement(By.id("username")).sendKeys("张三");
        driver.findElement(By.id("memberAdd_english_name")).sendKeys("wang");
        driver.findElement(By.id("memberAdd_acctid")).sendKeys("13426882203");
        driver.findElement(By.id("memberAdd_phone")).sendKeys("13426882203");
        Thread.sleep(1000);
        driver.findElement(By.id("memberAdd_telephone")).sendKeys("010-81722736");
        driver.findElement(By.id("memberAdd_mail")).sendKeys("2460765915@qq.com");
        driver.findElement(By.id("memberEdit_address")).sendKeys("北京市海淀区");
        driver.findElement(By.id("memberAdd_title")).sendKeys("开发");
        Thread.sleep(1000);
        driver.findElement(By.cssSelector(".js_btn_save")).click();


    }
    @Test
    void addDepTest() throws IOException{

        WebDriver driver=new FirefoxDriver();

        driver.get("https://work.weixin.qq.com/wework_admin/loginpage_wx");
        driver.manage().window().maximize();
        //隐式等待，默认每5秒轮询一次
        driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);

        ObjectMapper mapper=new ObjectMapper(new YAMLFactory());
        TypeReference typeReference=new TypeReference<List<HashMap<String,Object>>>(){};
        List<HashMap<String, Object>> cookies= (List<HashMap<String, Object>>) mapper.readValue(new File("orderOutput.yaml"),typeReference);
        cookies.forEach(
                cookieMap->{
                    driver.manage().addCookie(new Cookie(cookieMap.get("name").toString(), cookieMap.get("value").toString()));
                }
        );

        driver.navigate().refresh();
        driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);
        driver.findElement(By.cssSelector(".ww_indexImg_AddMember")).click();
        //driver.findElement(By.linkText("添加"));
        driver.findElement(By.cssSelector(".member_colLeft_top_addBtn")).click();
        driver.findElement(By.linkText("添加部门")).click();
        driver.findElement(By.name("name")).sendKeys("销售部");
        driver.findElement(By.xpath("//*[@class=\"member_tag_dialog_inputDlg\"]//div[3]/a")).click();
        driver.findElement(By.xpath("//*[@class=\"member_tag_dialog_inputDlg\"]//div[3]/div//a")).click();
        driver.findElement(By.xpath("//*[@class=\"qui_dialog_foot ww_dialog_foot\"]/a[1]")).click();




    }
}
