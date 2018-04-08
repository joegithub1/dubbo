package com.dubbo.demo.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dubbo.demo.service.DeptartmentService;

@Controller
@RequestMapping("/dept")
public class DeptController {

	@Autowired
	private DeptartmentService deptartmentService;
	
	@RequestMapping("/findDeptList")
	@ResponseBody
	public String getDeptList(){
		Map<String, Object> param = new HashMap<String, Object>();
		deptartmentService.findDeptList(param);
		return "ok";
	}
}
