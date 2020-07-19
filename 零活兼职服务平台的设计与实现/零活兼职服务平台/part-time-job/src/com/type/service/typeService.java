package com.type.service;

import com.type.entity.type;

import java.util.List;

public interface typeService {
    int deleteByPrimaryKey(Integer tid);

    int insert(type record);

    int insertSelective(type record);

    type selectByPrimaryKey(Integer tid);

    int updateByPrimaryKeySelective(type record);

    int updateByPrimaryKey(type record);

    List<type> list(type record);
}
