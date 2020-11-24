package com.uploadtest;

import com.multibrowsertest.BaseTest;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import java.util.concurrent.TimeUnit;

public class UploadTest extends BaseTest {

    @Test
    void uploadTest() throws InterruptedException {
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        driver.get("https://www.baidu.com");
        driver.findElement(By.cssSelector(".soutu-btn")).click();
        Thread.sleep(3000);
        driver.findElement(By.cssSelector(".upload-pic")).sendKeys("G:\\timg.jpg");
        Thread.sleep(8000);
    }



    public static void main(String[] args) {
        int[] nums= new int[]{2, 3, 1, 0, 2, 5, 3};
        if (nums.length <= 0) {
            return ;
        }
        for (int i = 0; i < nums.length; i++) {
            while (i != nums[i]) {
                if (nums[i] == nums[nums[i]]) {
                    System.out.println(nums[i]);
                    return ;
                }
                int tmp = nums[i];
                nums[i] = nums[tmp];
                nums[tmp] = tmp;
            }
        }
        System.out.println(nums[0]);
        return;
    }
}
