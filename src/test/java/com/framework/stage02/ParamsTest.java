package com.framework.stage02;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;

import java.io.IOException;
import java.util.List;

/**
 * 测试步骤驱动
 */


public class ParamsTest {


    @ParameterizedTest
    @MethodSource
    void search_04(SearchStepSelenium searchStepSelenium) {

        searchStepSelenium.run();
        //System.out.println(searchStepSelenium);

    }


    /**
     * 数据源解析
     * @return
     * @throws IOException
     */
    static List<SearchStepSelenium> search_04() throws IOException {
        ObjectMapper mapper = new ObjectMapper(new YAMLFactory());
        //TypeReference typeReference=new TypeReference<List<String>>(){};

        SearchStepSelenium searchStepSelenium = mapper.readValue(
                ParamsTest.class.getResourceAsStream("/searchStep02.yaml"),
                SearchStepSelenium.class);
        return searchStepSelenium.testcaseGenerate();

    }







}
