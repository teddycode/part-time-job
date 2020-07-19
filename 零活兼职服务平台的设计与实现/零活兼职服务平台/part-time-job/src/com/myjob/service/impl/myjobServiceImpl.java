package com.myjob.service.impl;

import com.myjob.dao.myjobMapper;
import com.myjob.entity.myjob;
import com.myjob.service.myjobService;
import com.user.dao.userMapper;
import com.user.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class myjobServiceImpl implements myjobService {
    @Autowired
    private myjobMapper userMapper;
    @Override
    public int deleteByPrimaryKey(Integer userid) {
        return userMapper.deleteByPrimaryKey(userid);
    }

    @Override
    public int insert(myjob record) {
        return userMapper.insert(record);
    }

    @Override
    public int insertSelective(myjob record) {
        return userMapper.insertSelective(record);
    }

    @Override
    public myjob selectByPrimaryKey(Integer userid) {
        return userMapper.selectByPrimaryKey(userid);
    }

    @Override
    public int updateByPrimaryKeySelective(myjob record) {
        return userMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(myjob record) {
        return userMapper.updateByPrimaryKey(record);
    }


    @Override
    public List<myjob> list(myjob myjob) {
        return userMapper.list(myjob);
    }
}
