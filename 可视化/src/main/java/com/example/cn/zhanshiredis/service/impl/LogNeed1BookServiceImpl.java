package com.example.cn.zhanshiredis.service.impl;

import com.example.cn.zhanshiredis.dao.LogNeed1BookDao;
import com.example.cn.zhanshiredis.dao.NameDao;
import com.example.cn.zhanshiredis.entity.NameValue;
import com.example.cn.zhanshiredis.entity.ValueName;
import com.example.cn.zhanshiredis.service.LogNeed1BookService;
import com.example.cn.zhanshiredis.service.LogNeed3Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogNeed1BookServiceImpl implements LogNeed1BookService {
    @Autowired
    LogNeed1BookDao logNeed1BookDao;

    @Override
    public List<NameValue> findAll1Book() {
        return logNeed1BookDao.findAll1Book();
    }

}
