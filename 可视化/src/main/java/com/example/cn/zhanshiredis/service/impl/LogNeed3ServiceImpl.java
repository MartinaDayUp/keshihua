package com.example.cn.zhanshiredis.service.impl;

import com.example.cn.zhanshiredis.dao.LogNeed7Dao;
import com.example.cn.zhanshiredis.dao.NameDao;
import com.example.cn.zhanshiredis.entity.LogNeed7Mysql;
import com.example.cn.zhanshiredis.entity.ValueName;
import com.example.cn.zhanshiredis.service.LogNeed3Service;
import com.example.cn.zhanshiredis.service.LogNeed7Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogNeed3ServiceImpl implements LogNeed3Service {
    @Autowired
    NameDao nameDao;

    @Override
    public List<ValueName> findAll3() {
        return nameDao.findAll3();
    }

}
