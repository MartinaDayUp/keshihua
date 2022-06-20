package com.example.cn.zhanshiredis.entity;

import java.util.List;

public class LogNeed6 {
    private List<String> names;
    private List<Integer> values1;
    private List<Integer> values2;


    public List<String> getNames() {
        return names;
    }

    public void setNames(List<String> names) {
        this.names = names;
    }

    public List<Integer> getValues1() {
        return values1;
    }

    public void setValues1(List<Integer> values1) {
        this.values1 = values1;
    }

    public List<Integer> getValues2() {
        return values2;
    }

    public void setValues2(List<Integer> values2) {
        this.values2 = values2;
    }

    @Override
    public String toString() {
        return "LogNeed6{" +
                "names=" + names +
                ", values1=" + values1 +
                ", values2=" + values2 +
                '}';
    }
}
