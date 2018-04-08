package com.dubbo.demo.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dubbo.demo.mapper.TDepartmentMapper;
import com.dubbo.demo.model.TDepartment;
import com.dubbo.demo.service.DeptartmentService;

@Service("deptartmentService")
public class DeptartmentServiceImpl implements DeptartmentService{

	@Autowired
	private TDepartmentMapper departmentMapper;
	@Override
	public List<TDepartment> findDeptList(Map<String, Object> param) {
		System.out.println(departmentMapper);
		return departmentMapper.findDepartmentList(param);
	}

}
