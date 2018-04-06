package com.demo.demo.service.impl;

//import com.alibaba.dubbo.config.annotation.Service;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.dubbo.demo.entity.User;
import com.dubbo.demo.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService{

	public String sayHello() {
		System.out.println("Hello world");
		return "say Hello world";
	}

	@Override
	public List<User> getUserByMap(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		
	}

}
