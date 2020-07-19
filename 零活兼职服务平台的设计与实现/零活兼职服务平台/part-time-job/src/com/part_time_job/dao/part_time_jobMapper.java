package com.part_time_job.dao;

import com.alibaba.fastjson.JSONObject;
import com.part_time_job.entity.part_time_job;

import java.util.List;

public interface part_time_jobMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(part_time_job record);

    int insertSelective(part_time_job record);

    part_time_job selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(part_time_job record);

    int updateByPrimaryKey(part_time_job record);

    List<part_time_job> list(part_time_job record);


    List<part_time_job> sellist(JSONObject jsonObject);

    int count(part_time_job record);
}