package com.example.cn.zhanshiredis.entity;

import java.util.List;

public class LogNeed2 {
    private List<String> names;
    private List<Integer> values;

    public List<String> getNames() {
        return names;
    }

    public void setNames(List<String> names) {
        this.names = names;
    }

    public List<Integer> getValues() {
        return values;
    }

    public void setValues(List<Integer> values) {
        this.values = values;
    }

    @Override
    public String toString() {
        return "LogNeed2{" +
                "names=" + names +
                ", values=" + values +
                '}';
    }
}
