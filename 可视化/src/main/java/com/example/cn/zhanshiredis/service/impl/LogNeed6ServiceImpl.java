package com.example.cn.zhanshiredis.service.impl;

import com.example.cn.zhanshiredis.dao.LogNeed6Dao;
import com.example.cn.zhanshiredis.dao.LogNeed7Dao;
import com.example.cn.zhanshiredis.entity.LogNeed6Mysql;
import com.example.cn.zhanshiredis.entity.LogNeed7Mysql;
import com.example.cn.zhanshiredis.service.LogNeed6Service;
import com.example.cn.zhanshiredis.service.LogNeed7Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogNeed6ServiceImpl implements LogNeed6Service {
    @Autowired
    LogNeed6Dao logNeed6Dao;

    @Override
    public List<LogNeed6Mysql> findAll6() {
        return logNeed6Dao.findAll6();
    }

}
