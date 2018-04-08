package com.dubbo.demo.service;

import java.util.List;
import java.util.Map;

import com.dubbo.demo.model.TDepartment;

public interface DeptartmentService {

	public List<TDepartment> findDeptList(Map<String, Object> param);
}
