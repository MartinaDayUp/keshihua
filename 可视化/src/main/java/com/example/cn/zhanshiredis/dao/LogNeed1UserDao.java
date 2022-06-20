package com.example.cn.zhanshiredis.dao;

import com.example.cn.zhanshiredis.entity.NameValue;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component("UserMapper")
public interface LogNeed1UserDao {
    @Select("select * from one_copy1_user")
    List<NameValue> findAll1User() ;
}
