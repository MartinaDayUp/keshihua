package com.example.cn.zhanshiredis.service;

import com.example.cn.zhanshiredis.entity.LogNeed10Mysql;
import com.example.cn.zhanshiredis.entity.LogNeed7Mysql;

import java.util.List;

public interface LogNeed10Service {
    List<LogNeed10Mysql> findAllTimePeriod();
}
