package com.example.cn.zhanshiredis.service;

import com.example.cn.zhanshiredis.entity.LogNeed7Mysql;

import java.util.List;

public interface LogNeed7Service {
    List<LogNeed7Mysql> findAllTime();
}
