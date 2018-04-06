package com.dubbo.demo.service;

import java.util.List;
import java.util.Map;

import com.dubbo.demo.entity.User;

public interface UserService {

	public String sayHello();
	
	public List<User> getUserByMap(Map<String, Object> param);
	
	public void saveUser(User user);
	
	public void updateUser(User user);
	//public void getMapperByMethod();
}
