package com.service;

import java.util.List;

import com.domain.student;

public interface selectService {

	 List<student> selectAll();


	void deleteByPrimaryKey(String id);


	void insertSelective(student stu);


	int updateByPrimaryKeySelective(student stu);


	student selectByPrimaryKey(String id);
	
	
}
