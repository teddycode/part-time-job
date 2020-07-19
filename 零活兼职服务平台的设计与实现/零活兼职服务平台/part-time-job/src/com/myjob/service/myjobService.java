package com.myjob.service;

import com.myjob.entity.myjob;
import com.user.entity.user;

import java.util.List;

public interface myjobService {
    int deleteByPrimaryKey(Integer mid);

    int insert(myjob record);

    int insertSelective(myjob record);

    myjob selectByPrimaryKey(Integer mid);

    int updateByPrimaryKeySelective(myjob record);

    int updateByPrimaryKey(myjob record);

    List<myjob> list(myjob record);
}
