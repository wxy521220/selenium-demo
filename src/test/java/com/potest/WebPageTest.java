package com.potest;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Cookie;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class WebPageTest extends BasePageTest{

    public static  WebDriver driver;

    public WebPageTest(WebDriver driver) {
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
    void addUserTest() throws InterruptedException {
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
    void addDepTest(){
        click(findElement(By.cssSelector(".ww_indexImg_AddMember")));
        //findElement(By.linkText("添加"));
        click( findElement(By.cssSelector(".member_colLeft_top_addBtn")));
        click(findElement(By.linkText("添加部门")));
        sendKeys(findElement(By.name("name")),"销售部");
        click(findElement(By.xpath("//*[@class=\"member_tag_dialog_inputDlg\"]//div[3]/a")));
        click(findElement(By.xpath("//*[@class=\"member_tag_dialog_inputDlg\"]//div[3]/div//a")));
        click(findElement(By.xpath("//*[@class=\"qui_dialog_foot ww_dialog_foot\"]/a[1]")));

    }

    @Test
    void serchDepTest(){
        click(findElement(By.cssSelector(".ww_indexImg_AddMember")));
        sendKeys(findElement(By.id("memberSearchInput")),"销售部");
        boolean flg = driver.findElement(By.cssSelector(".member_colLeft_bottom")).getText().contains("销售部");
        Assertions.assertEquals("true",flg);
    }

    @AfterAll
    static void afterAll(){
        driver.quit();
    }
}
