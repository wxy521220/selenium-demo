package com.potest;

import org.junit.jupiter.api.Test;
import java.io.IOException;

public class ContactPOTest {

    //错误一：业务代码分离，所以test里不应该存在driver
    //WebDriver driver=new FirefoxDriver();


    @Test
    void addMember() throws IOException, InterruptedException {
        //打开页面
        MainPage mainPage=new MainPage();
        mainPage.enterContact().addMember("lisi","lisi","13683325544");
        //mainPage.addMember().serchDep();
    }
}
