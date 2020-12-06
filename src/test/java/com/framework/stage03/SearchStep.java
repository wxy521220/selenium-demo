package com.framework.stage03;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SearchStep {

    public List<String> data;
    public   List<HashMap<String,Object>> steps;
    public static int index=0;




    //case裂变
    //index
    //替换变量值

    /**
     * case裂变
     * @return
     */

    public  List<SearchStep> testcaseGenerate(){
        List<SearchStep> searchSteps =new ArrayList<>();
        for (int i = 0; i < data.size(); i++) {
            SearchStepPO newStepPO=new SearchStepPO();
            newStepPO.index=i;
            newStepPO.data=data;
            newStepPO.steps=steps;

            searchSteps.add(newStepPO);
        }

        return searchSteps;
    }

    /**
     * 替换变量值
     * @param step
     * @param key
     * @return
     */

    public Object getValue(HashMap<String,Object> step,String key){
        Object value = step.get(key);
        //todo instanceof 用法记忆
        if(value instanceof String){
            value=((String) value).replace("${data}", data.get(index));
        }

        return value;
    }
    public Object getValue(HashMap<String,Object> step,String key,Object def){
        Object value = step.getOrDefault(key,def);

        if(value instanceof String){
            value=((String) value).replace("${data}", data.get(index));
        }

        return value;
    }


    public void run(){
        System.out.println("filei");

    }
}
