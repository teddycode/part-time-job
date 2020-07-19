package com.myy.service.impl;

import com.myy.dao.myyMapper;
import com.myy.entity.myy;
import com.myy.service.myyService;
import com.user.dao.userMapper;
import com.user.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class myyServiceImpl implements myyService {
    @Autowired
    private myyMapper userMapper;
    @Override
    public int deleteByPrimaryKey(Integer userid) {
        return userMapper.deleteByPrimaryKey(userid);
    }

    @Override
    public int insert(myy record) {
        return userMapper.insert(record);
    }

    @Override
    public int insertSelective(myy record) {
        return userMapper.insertSelective(record);
    }

    @Override
    public myy selectByPrimaryKey(Integer userid) {
        return userMapper.selectByPrimaryKey(userid);
    }

    @Override
    public int updateByPrimaryKeySelective(myy record) {
        return userMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(myy record) {
        return userMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<myy> list(myy user) {
        return userMapper.list(user);
    }
}
