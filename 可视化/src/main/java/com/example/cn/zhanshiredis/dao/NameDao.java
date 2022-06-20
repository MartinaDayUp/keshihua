package com.example.cn.zhanshiredis.dao;

import com.example.cn.zhanshiredis.entity.LogNeed10Mysql;
import com.example.cn.zhanshiredis.entity.ValueName;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component("NameMapper")
public interface NameDao {
    @Select("select * from three")
    List<ValueName> findAll3() ;
}
