package com.example.cn.zhanshiredis.dao;

import com.example.cn.zhanshiredis.entity.NameValue;
import com.example.cn.zhanshiredis.entity.ValueName;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component("BookMapper")
public interface LogNeed1BookDao {
    @Select("select * from one_copy1_book")
    List<NameValue> findAll1Book() ;
}
