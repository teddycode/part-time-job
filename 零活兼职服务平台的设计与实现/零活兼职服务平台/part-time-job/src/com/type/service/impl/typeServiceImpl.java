package com.type.service.impl;

import com.type.dao.typeMapper;
import com.type.entity.type;
import com.type.service.typeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class typeServiceImpl implements typeService {
    @Autowired
    private typeMapper mapper;
    @Override
    public int deleteByPrimaryKey(Integer tid) {
        return mapper.deleteByPrimaryKey(tid);
    }

    @Override
    public int insert(type record) {
        return mapper.insert(record);
    }

    @Override
    public int insertSelective(type record) {
        return mapper.insertSelective(record);
    }

    @Override
    public type selectByPrimaryKey(Integer tid) {
        return mapper.selectByPrimaryKey(tid);
    }

    @Override
    public int updateByPrimaryKeySelective(type record) {
        return mapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(type record) {
        return mapper.updateByPrimaryKey(record);
    }

    @Override
    public List<type> list(type record) {
        return mapper.list(record);
    }
}
