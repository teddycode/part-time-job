package com.myy.dao;

import com.myy.entity.myy;

import java.util.List;

public interface myyMapper {
    int deleteByPrimaryKey(Integer yyid);

    int insert(myy record);

    int insertSelective(myy record);

    myy selectByPrimaryKey(Integer yyid);

    int updateByPrimaryKeySelective(myy record);

    int updateByPrimaryKey(myy record);
    List<myy> list(myy record);
}