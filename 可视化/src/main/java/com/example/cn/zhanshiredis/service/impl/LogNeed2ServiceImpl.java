package com.example.cn.zhanshiredis.service.impl;

import com.example.cn.zhanshiredis.dao.LogNeed2Dao;
import com.example.cn.zhanshiredis.entity.LogNeed2Mysql;
import com.example.cn.zhanshiredis.service.LogNeed2Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogNeed2ServiceImpl implements LogNeed2Service {
    @Autowired
    LogNeed2Dao logNeed2Dao;

    @Override
    public List<LogNeed2Mysql> findAllIdentity() {
        return logNeed2Dao.findAllIdentity();
    }

}
