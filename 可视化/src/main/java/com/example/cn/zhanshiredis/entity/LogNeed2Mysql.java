package com.example.cn.zhanshiredis.entity;

public class LogNeed2Mysql {
    private String identity;
    private int count;

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "LogNeed2Mysql{" +
                "identity='" + identity + '\'' +
                ", count=" + count +
                '}';
    }
}
