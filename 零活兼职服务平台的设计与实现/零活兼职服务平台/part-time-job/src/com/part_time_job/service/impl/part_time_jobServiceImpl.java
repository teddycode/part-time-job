package com.part_time_job.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.part_time_job.dao.part_time_jobMapper;
import com.part_time_job.entity.part_time_job;
import com.part_time_job.service.part_time_jobService;
import com.user.dao.userMapper;
import com.user.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class part_time_jobServiceImpl implements part_time_jobService {
    @Autowired
    private part_time_jobMapper userMapper;
    @Override
    public int deleteByPrimaryKey(Integer userid) {
        return userMapper.deleteByPrimaryKey(userid);
    }

    @Override
    public int insert(part_time_job record) {
        return userMapper.insert(record);
    }

    @Override
    public int insertSelective(part_time_job record) {
        return userMapper.insertSelective(record);
    }

    @Override
    public part_time_job selectByPrimaryKey(Integer userid) {
        return userMapper.selectByPrimaryKey(userid);
    }

    @Override
    public int updateByPrimaryKeySelective(part_time_job record) {
        return userMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(part_time_job record) {
        return userMapper.updateByPrimaryKey(record);
    }


    @Override
    public List<part_time_job> list(part_time_job user) {
        return userMapper.list(user);
    }

    @Override
    public List<part_time_job> sellist(JSONObject jsonObject) {
        return userMapper.sellist(jsonObject);
    }

    @Override
    public int count(part_time_job record) {
        return userMapper.count(record);
    }
}
