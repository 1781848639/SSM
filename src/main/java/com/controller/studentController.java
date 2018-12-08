package com.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.domain.student;
import com.domain.studentMap;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.selectService;
import com.service.impl.selectServiceImpl;

@Controller
public class studentController {
	
	@Autowired
	private selectService impl;
	
	@RequestMapping(value="show",method=RequestMethod.GET)
	@ResponseBody
	public studentMap selectAll(@RequestParam(value="pc",defaultValue="1") Integer pc) {
		PageHelper.startPage(pc, 2);
		List<student> list = impl.selectAll();
		PageInfo<student> pageinfo = new PageInfo<student>(list, 3);
		return studentMap.add("pageinfo", pageinfo);
	}
	
	@RequestMapping(value="delete/{id}",method=RequestMethod.DELETE)
	@ResponseBody
	public studentMap delete(@PathVariable("id") String id) {
		impl.deleteByPrimaryKey(id);
		return studentMap.add("",null);
	}
	
	
	@RequestMapping(value="insert",method=RequestMethod.POST)
	@ResponseBody
	public studentMap delete(student stu) {
		impl.insertSelective(stu);
		return studentMap.add("",null);
	}
	
	
	@RequestMapping(value="update/{id}",method=RequestMethod.PUT)
	@ResponseBody
	public studentMap update(student stu) {
		int i = impl.updateByPrimaryKeySelective(stu);
		return studentMap.add("",null);
	}
	
	
	@RequestMapping(value="selectByOne",method=RequestMethod.GET)
	@ResponseBody
	public studentMap selectByOne(student stu) {
		student student = impl.selectByPrimaryKey(stu.getId());
		student s = new student();
//		s.setAge(1);
//		System.out.println(student);
		System.out.println(student);
		PageHelper.startPage(1,1);
		List<student> list = new LinkedList();
		list.add(student);
		PageInfo<student> pageinfo = new PageInfo<student>(list);
		return studentMap.add("studentResult",pageinfo);
	}
	
}
