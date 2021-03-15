package com.potest;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
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

import static org.junit.jupiter.api.Assertions.assertEquals;

public class ContactTest extends BasePage {

    public static  WebDriver driver;

    public ContactTest(WebDriver driver) {
        super(driver);
    }


    @BeforeAll
    static void getCookieAndogin() throws IOException, InterruptedException {
        driver=new FirefoxDriver();
        driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);
        driver.get("https://work.weixin.qq.com/wework_admin/loginpage_wx");
        Thread.sleep(15000);
        File file=new File("orderOutput.yaml");

        ObjectMapper mapper=new ObjectMapper(new YAMLFactory());
        if(!file.exists()){
            Set<Cookie> cookies = driver.manage().getCookies();
            mapper.writeValue(new File("orderOutput.yaml"), cookies);
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

    @Test
    void addConract() throws InterruptedException {
        click(By.cssSelector(".ww_indexImg_AddMember"));
        Thread.sleep(1000);
        sendKeys(By.id("username"),"张三");
        sendKeys(By.id("memberAdd_english_name"),"wang");
        sendKeys(By.id("memberAdd_acctid"),"13426882203");
        sendKeys(By.id("memberAdd_phone"),"13426882203");
        Thread.sleep(1000);
        sendKeys(By.id("memberAdd_telephone"),"010-81722736");
        sendKeys(By.id("memberAdd_mail"),"2460765915@qq.com");
        sendKeys(By.id("memberEdit_address"),"北京市海淀区");
        sendKeys(By.id("memberAdd_title"),"开发");
        Thread.sleep(1000);
        click(By.cssSelector(".js_btn_save"));


    }
    @Test
    void addDep(){
        click((By.cssSelector(".ww_indexImg_AddMember")));
        //findElement(By.linkText("添加"));
        click(By.cssSelector(".member_colLeft_top_addBtn"));
        click(By.linkText("添加部门"));
        sendKeys(By.name("name"),"销售部");
        click(By.xpath("//*[@class=\"member_tag_dialog_inputDlg\"]//div[3]/a"));
        click(By.xpath("//*[@class=\"member_tag_dialog_inputDlg\"]//div[3]/div//a"));
        click(By.xpath("//*[@class=\"qui_dialog_foot ww_dialog_foot\"]/a[1]"));

    }

    @Test
    void serchDep(){
        click((By.cssSelector(".ww_indexImg_AddMember")));
        sendKeys(By.id("memberSearchInput"),"销售部");
        boolean flg = driver.findElement(By.cssSelector(".member_colLeft_bottom")).getText().contains("销售部");
        assertEquals("true",flg);
    }

    @AfterAll
    static void afterAll(){
        driver.quit();
    }
}
