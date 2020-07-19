package com.jb.service.impl;

import com.jb.dao.jbMapper;
import com.jb.entity.jb;
import com.jb.service.jbService;
import com.user.dao.userMapper;
import com.user.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class jbServiceImpl implements jbService {
    @Autowired
    private jbMapper userMapper;
    @Override
    public int deleteByPrimaryKey(Integer userid) {
        return userMapper.deleteByPrimaryKey(userid);
    }

    @Override
    public int insert(jb record) {
        return userMapper.insert(record);
    }

    @Override
    public int insertSelective(jb record) {
        return userMapper.insertSelective(record);
    }

    @Override
    public jb selectByPrimaryKey(Integer userid) {
        return userMapper.selectByPrimaryKey(userid);
    }

    @Override
    public int updateByPrimaryKeySelective(jb record) {
        return userMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(jb record) {
        return userMapper.updateByPrimaryKey(record);
    }


    @Override
    public List<jb> list(jb jb) {
        return userMapper.list(jb);
    }
}
