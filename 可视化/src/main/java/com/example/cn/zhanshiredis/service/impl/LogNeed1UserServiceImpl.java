package com.example.cn.zhanshiredis.service.impl;

import com.example.cn.zhanshiredis.dao.LogNeed1BookDao;
import com.example.cn.zhanshiredis.dao.LogNeed1UserDao;
import com.example.cn.zhanshiredis.entity.NameValue;
import com.example.cn.zhanshiredis.service.LogNeed1BookService;
import com.example.cn.zhanshiredis.service.LogNeed1UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogNeed1UserServiceImpl implements LogNeed1UserService {
    @Autowired
    LogNeed1UserDao logNeed1UserDao;

    @Override
    public List<NameValue> findAll1User() {
        return logNeed1UserDao.findAll1User();
    }

}
