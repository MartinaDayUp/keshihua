package com.example.cn.zhanshiredis.entity;

public class LogNeed10Mysql {
    private String time_period;
    private int book_count;


    public String getTime_period() {
        return time_period;
    }

    public void setTime_period(String time_period) {
        this.time_period = time_period;
    }

    public int getBook_count() {
        return book_count;
    }

    public void setBook_count(int book_count) {
        this.book_count = book_count;
    }

    @Override
    public String toString() {
        return "LogNeed10Mysql{" +
                "time_period='" + time_period + '\'' +
                ", book_count=" + book_count +
                '}';
    }
}
