package com.example.cn.zhanshiredis.dao;

import com.example.cn.zhanshiredis.entity.LogNeed10Mysql;
import com.example.cn.zhanshiredis.entity.LogNeed7Mysql;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component("LogNeed10Mapper")
public interface LogNeed10Dao {
    @Select("select * from ten")
    List<LogNeed10Mysql> findAllTimePeriod() ;
}
