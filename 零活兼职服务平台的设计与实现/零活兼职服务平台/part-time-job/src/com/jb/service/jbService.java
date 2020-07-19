package com.jb.service;

import com.jb.entity.jb;
import com.user.entity.user;

import java.util.List;

public interface jbService {
    int deleteByPrimaryKey(Integer jid);

    int insert(jb record);

    int insertSelective(jb record);

    jb selectByPrimaryKey(Integer jid);

    int updateByPrimaryKeySelective(jb record);

    int updateByPrimaryKey(jb record);

    List<jb> list(jb record);
}
