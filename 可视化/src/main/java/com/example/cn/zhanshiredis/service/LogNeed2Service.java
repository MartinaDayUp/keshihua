package com.example.cn.zhanshiredis.service;

import com.example.cn.zhanshiredis.entity.LogNeed2Mysql;

import java.util.List;

public interface LogNeed2Service {
    List<LogNeed2Mysql> findAllIdentity();
}
