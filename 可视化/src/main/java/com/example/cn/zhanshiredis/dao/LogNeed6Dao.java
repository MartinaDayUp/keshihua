package com.example.cn.zhanshiredis.dao;

import com.example.cn.zhanshiredis.entity.LogNeed10Mysql;
import com.example.cn.zhanshiredis.entity.LogNeed6Mysql;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component("LogNeed6Mapper")
public interface LogNeed6Dao {
    @Select("select * from six")
    List<LogNeed6Mysql> findAll6() ;
}
