package com.example.cn.zhanshiredis.dao;

import com.example.cn.zhanshiredis.entity.LogNeed2Mysql;
import com.example.cn.zhanshiredis.entity.LogNeed7Mysql;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component("LogNeed7Mapper")
public interface LogNeed7Dao {
    @Select("select * from seven")
    List<LogNeed7Mysql> findAllTime() ;
}
