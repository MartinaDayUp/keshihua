package com.example.cn.zhanshiredis.service.impl;

import com.example.cn.zhanshiredis.dao.LogNeed1BookDao;
import com.example.cn.zhanshiredis.dao.LogNeed1PriceDao;
import com.example.cn.zhanshiredis.entity.NameValue;
import com.example.cn.zhanshiredis.service.LogNeed1BookService;
import com.example.cn.zhanshiredis.service.LogNeed1PriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogNeed1PriceServiceImpl implements LogNeed1PriceService {
    @Autowired
    LogNeed1PriceDao logNeed1PriceDao;

    @Override
    public List<NameValue> findAll1Price() {
        return logNeed1PriceDao.findAll1Price();
    }

}
