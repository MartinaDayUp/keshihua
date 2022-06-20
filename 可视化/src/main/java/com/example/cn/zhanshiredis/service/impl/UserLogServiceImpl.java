package com.example.cn.zhanshiredis.service.impl;


import com.example.cn.zhanshiredis.dao.UserLogDao;
import com.example.cn.zhanshiredis.entity.UserLog;
import com.example.cn.zhanshiredis.service.UserLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: 张鹏飞
 * @company： 软通动力信息技术股份有限公司
 * @Official： www.isoftstone.com
 */
@Service
public class UserLogServiceImpl implements UserLogService {
    @Autowired
    UserLogDao userLogDao;

    @Override
    public List<UserLog> getAll() {
        return userLogDao.getAll();
    }
}
