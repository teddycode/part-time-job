package com.jb.dao;

import com.jb.entity.jb;

import java.util.List;

public interface jbMapper {
    int deleteByPrimaryKey(Integer jid);

    int insert(jb record);

    int insertSelective(jb record);

    jb selectByPrimaryKey(Integer jid);

    int updateByPrimaryKeySelective(jb record);

    int updateByPrimaryKey(jb record);

    List<jb> list(jb record);
}