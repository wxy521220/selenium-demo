package com.framework.stage04;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SearchStep {

    public List<String> data;
    public   List<HashMap<String,Object>> steps;
    //todo    static
    public  int index=0;




    //case裂变
    //index
    //替换变量值

    /**
     * case裂变
     * @return
     */

    public  List<SearchStep> testcaseGenerate(){
        List<SearchStep> searchSteps =new ArrayList<>();
        System.out.println("data.size()-->"+data.size());
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
        System.out.println("index"+index);
        Object value = step.get(key);
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
