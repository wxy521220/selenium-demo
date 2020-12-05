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
    void search_04(SearchStep searchStep) {

        searchStep.run();
        //System.out.println(searchStep);

    }



    static List<SearchStep> search_04() throws IOException {
        ObjectMapper mapper = new ObjectMapper(new YAMLFactory());
        //TypeReference typeReference=new TypeReference<List<String>>(){};

        SearchStep searchStep = mapper.readValue(
                ParamsTest.class.getResourceAsStream("/searchStep.yaml"),
                SearchStep.class);
        return searchStep.testcaseGenerate();

    }







}
