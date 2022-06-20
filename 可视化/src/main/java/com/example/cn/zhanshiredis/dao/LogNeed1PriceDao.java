package com.example.cn.zhanshiredis.dao;

import com.example.cn.zhanshiredis.entity.NameValue;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component("PriceMapper")
public interface LogNeed1PriceDao {
    @Select("select * from one_copy1_price")
    List<NameValue> findAll1Price() ;
}
