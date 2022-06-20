package com.example.cn.zhanshiredis.service.impl;

import com.example.cn.zhanshiredis.dao.LogNeed10Dao;
import com.example.cn.zhanshiredis.dao.LogNeed7Dao;
import com.example.cn.zhanshiredis.entity.LogNeed10Mysql;
import com.example.cn.zhanshiredis.entity.LogNeed7Mysql;
import com.example.cn.zhanshiredis.service.LogNeed10Service;
import com.example.cn.zhanshiredis.service.LogNeed7Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogNeed10ServiceImpl implements LogNeed10Service {
    @Autowired
    LogNeed10Dao logNeed10Dao;

    @Override
    public List<LogNeed10Mysql> findAllTimePeriod() {
        return logNeed10Dao.findAllTimePeriod();
    }

}
