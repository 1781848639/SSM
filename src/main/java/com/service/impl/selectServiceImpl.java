package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.dao.studentMapper;
import com.domain.student;
import com.service.selectService;

@Service
public class selectServiceImpl implements selectService{

	@Autowired
	private studentMapper mapper;
	
	public List<student> selectAll() {
		return mapper.selectAll();
	}


	public void deleteByPrimaryKey(String id) {
			mapper.deleteByPrimaryKey(id);
	}


	public void insertSelective(student stu) {
			mapper.insertSelective(stu);
	}


	


	public student selectByPrimaryKey(String id) {
			return mapper.selectByPrimaryKey(id);
	}


	public int updateByPrimaryKeySelective(student stu) {
			int updateByPrimaryKeySelective = mapper.updateByPrimaryKeySelective(stu);
			System.out.println(updateByPrimaryKeySelective);
		return updateByPrimaryKeySelective;
	}

}
