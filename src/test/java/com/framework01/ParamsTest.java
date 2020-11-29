package com.framework01;


import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvFileSource;
import org.junit.jupiter.params.provider.MethodSource;
import org.junit.jupiter.params.provider.ValueSource;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.assertTrue;


public class ParamsTest {


    @ParameterizedTest
    @ValueSource(strings = {"apple","dog"})
    void search_01(String keyword){
        WebDriver driver=new FirefoxDriver();
        driver.get("https://ceshiren.com/");
        driver.findElement(By.id("search-button")).click();
        driver.findElement(By.id("search-term")).sendKeys(keyword);
    }

    @ParameterizedTest
    @MethodSource()
    void search_02(String keyword){
        WebDriver driver=new FirefoxDriver();
        driver.get("https://ceshiren.com/");
        driver.findElement(By.id("search-button")).click();
        driver.findElement(By.id("search-term")).sendKeys(keyword);
    }

    static Stream<String> search_02(){
        return Stream.of("apple","dog");

    }


    @ParameterizedTest
    @CsvFileSource(resources = "/users.csv")
    void search_03(String keyword) {
        WebDriver driver=new FirefoxDriver();
        driver.get("https://ceshiren.com/");
        driver.findElement(By.id("search-button")).click();
        driver.findElement(By.id("search-term")).sendKeys(keyword);
    }

    @ParameterizedTest
    @MethodSource
    void search_04(String keyword) {
        WebDriver driver=new FirefoxDriver();
        driver.get("https://ceshiren.com/");
        driver.findElement(By.id("search-button")).click();
        driver.findElement(By.id("search-term")).sendKeys(keyword);
    }
    static List<String> search_04() throws IOException {
        ObjectMapper mapper = new ObjectMapper(new YAMLFactory());
        TypeReference typeReference=new TypeReference<List<String>>(){};

       //List<String> keyWords= (List<String>) mapper.readValue(new File("test.yaml"), typeReference);
       List<String> keyWords= (List<String>) mapper.readValue(
               ParamsTest.class.getResourceAsStream("/search.yaml"),
               typeReference);
       return keyWords;

    }





}
