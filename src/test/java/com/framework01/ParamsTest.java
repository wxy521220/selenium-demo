package com.framework01;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;

import java.io.IOException;
import java.util.stream.Stream;

/**
 * 测试步骤驱动
 */


public class ParamsTest {


    @ParameterizedTest
    @MethodSource
    void search_04(SearchStep searchStep) {

        System.out.println(searchStep);
        searchStep.run();
    }



    static Stream<SearchStep> search_04() throws IOException {
        ObjectMapper mapper = new ObjectMapper(new YAMLFactory());
        //TypeReference typeReference=new TypeReference<List<String>>(){};

        SearchStep searchStep = mapper.readValue(
                ParamsTest.class.getResourceAsStream("/searchStep.yaml"),
                SearchStep.class);
        return Stream.of(searchStep);

    }







}
