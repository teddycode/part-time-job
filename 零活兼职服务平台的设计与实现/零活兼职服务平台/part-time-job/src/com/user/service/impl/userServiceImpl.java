package com.user.service.impl;

import com.user.dao.userMapper;
import com.user.entity.user;
import com.user.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class userServiceImpl implements userService {
    @Autowired
    private userMapper userMapper;
    @Override
    public int deleteByPrimaryKey(Integer userid) {
        return userMapper.deleteByPrimaryKey(userid);
    }

    @Override
    public int insert(user record) {
        return userMapper.insert(record);
    }

    @Override
    public int insertSelective(user record) {
        return userMapper.insertSelective(record);
    }

    @Override
    public user selectByPrimaryKey(Integer userid) {
        return userMapper.selectByPrimaryKey(userid);
    }

    @Override
    public int updateByPrimaryKeySelective(user record) {
        return userMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(user record) {
        return userMapper.updateByPrimaryKey(record);
    }

    @Override
    public user login(user user) {
        return userMapper.login(user);
    }

    @Override
    public List<user> list(user user) {
        return userMapper.list(user);
    }
}
