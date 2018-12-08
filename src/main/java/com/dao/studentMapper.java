package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.domain.student;

@Repository
public interface studentMapper {
    int deleteByPrimaryKey(String id);

    List<student> selectAll();
    
    int insert(student record);

    int insertSelective(student record);

    student selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(student record);

    int updateByPrimaryKey(student record);
}