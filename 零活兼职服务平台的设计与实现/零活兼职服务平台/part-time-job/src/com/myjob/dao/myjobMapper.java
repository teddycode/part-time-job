package com.myjob.dao;

import com.myjob.entity.myjob;

import java.util.List;

public interface myjobMapper {
    int deleteByPrimaryKey(Integer mid);

    int insert(myjob record);

    int insertSelective(myjob record);

    myjob selectByPrimaryKey(Integer mid);

    int updateByPrimaryKeySelective(myjob record);

    int updateByPrimaryKey(myjob record);

    List<myjob> list(myjob record);
}