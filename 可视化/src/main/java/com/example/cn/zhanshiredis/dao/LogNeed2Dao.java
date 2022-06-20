package com.example.cn.zhanshiredis.dao;

import com.example.cn.zhanshiredis.entity.LogNeed2Mysql;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component("LogNeed2Mapper")
public interface LogNeed2Dao {
    @Select("select * from two")
    List<LogNeed2Mysql> findAllIdentity() ;

}
