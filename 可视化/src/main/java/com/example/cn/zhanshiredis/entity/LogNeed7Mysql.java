package com.example.cn.zhanshiredis.entity;

public class LogNeed7Mysql {
    private String time;
    private int sum_book;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getSum_book() {
        return sum_book;
    }

    public void setSum_book(int sum_book) {
        this.sum_book = sum_book;
    }

    @Override
    public String toString() {
        return "logNeed7Mysql{" +
                "time='" + time + '\'' +
                ", sum_book=" + sum_book +
                '}';
    }
}
