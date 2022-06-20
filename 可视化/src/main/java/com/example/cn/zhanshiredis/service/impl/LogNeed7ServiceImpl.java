package com.example.cn.zhanshiredis.service.impl;

import com.example.cn.zhanshiredis.dao.LogNeed2Dao;
import com.example.cn.zhanshiredis.dao.LogNeed7Dao;
import com.example.cn.zhanshiredis.entity.LogNeed2Mysql;
import com.example.cn.zhanshiredis.entity.LogNeed7Mysql;
import com.example.cn.zhanshiredis.service.LogNeed2Service;
import com.example.cn.zhanshiredis.service.LogNeed7Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogNeed7ServiceImpl implements LogNeed7Service {
    @Autowired
    LogNeed7Dao logNeed7Dao;

    @Override
    public List<LogNeed7Mysql> findAllTime() {
        return logNeed7Dao.findAllTime();
    }

}
