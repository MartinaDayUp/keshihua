package com.example.cn.zhanshiredis.entity;

public class LogNeed6Mysql {
    private String book_name;
    private int book_num1;
    private int book_num2;


    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public int getBook_num1() {
        return book_num1;
    }

    public void setBook_num1(int book_num1) {
        this.book_num1 = book_num1;
    }

    public int getBook_num2() {
        return book_num2;
    }

    public void setBook_num2(int book_num2) {
        this.book_num2 = book_num2;
    }

    @Override
    public String toString() {
        return "LogNeed6Mysql{" +
                "book_name='" + book_name + '\'' +
                ", book_num1=" + book_num1 +
                ", book_num2=" + book_num2 +
                '}';
    }
}
