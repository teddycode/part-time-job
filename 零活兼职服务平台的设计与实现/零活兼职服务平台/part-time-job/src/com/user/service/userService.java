package com.user.service;

import com.user.entity.user;

import java.util.List;

public interface userService {
    int deleteByPrimaryKey(Integer userid);

    int insert(user record);

    int insertSelective(user record);

    user selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(user record);

    int updateByPrimaryKey(user record);

    user login(user user);

    List<user> list(user user);
}
