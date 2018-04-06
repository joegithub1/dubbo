package com.dubbo.demo.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.dubbo.demo.entity.User;
@Component
public interface UserMapper {

	public List<User> getUserByMap(Map<String, Object> param);
	
	public void saveUser(User user);
}
