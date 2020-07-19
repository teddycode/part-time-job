package com.myy.service;

import com.myy.entity.myy;
import com.user.entity.user;

import java.util.List;

public interface myyService {
    int deleteByPrimaryKey(Integer yyid);

    int insert(myy record);

    int insertSelective(myy record);

    myy selectByPrimaryKey(Integer yyid);

    int updateByPrimaryKeySelective(myy record);

    int updateByPrimaryKey(myy record);
    List<myy> list(myy record);
}
