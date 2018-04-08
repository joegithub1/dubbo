package com.dubbo.demo.mapper;

import java.util.List;
import java.util.Map;


import com.dubbo.demo.entity.User;
public interface UserMapper {

	public List<User> getUserByMap(Map<String, Object> param);
	
	public void saveUser(User user);
}
