package com.potest;

import org.junit.jupiter.api.Test;

public class ContactPOTest {


    @Test
    void addMember(){
        //打开页面
        //
        MainPage mainPage=new MainPage();
        mainPage.addMember().addMember("zhagnsan","zhagnsan","13683325533");
        //mainPage.addMember().serch();
    }
}
