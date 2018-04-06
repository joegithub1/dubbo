package com.dubbo.demo.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

//import com.alibaba.dubbo.config.annotation.Service;

import com.dubbo.demo.entity.User;
import com.dubbo.demo.mapper.UserMapper;
import com.dubbo.demo.service.UserService;
//使用dubbo是为了注册到服务
@Service("userService")
public class UserServiceImpl implements UserService{

	 
	//@Autowired
	//private UserDao userDao;
	 
	//@Qualifier("userMapper")
	//@Resource(name="userMapper")
	//@Autowired
	private UserMapper userMapper;
	/*@Override
	public void getMapperByMethod(){
		System.out.println("get userMapper start");
		String[] xmlCfg = new String[] {"classpath:/spring/spring-mybatis.xml"}; 
		ApplicationContext ac = new FileSystemXmlApplicationContext(xmlCfg); 
		//System.out.println(ac.getBean("userMapper")); 
		userMapper = (UserMapper) ac.getBean("userMapper");
		System.out.println("userMapper Result : "+userMapper);
		
	}*/
	@Override
	public String sayHello() {
		System.out.println("dubbo_provider sayHello");
		return "dubbo_provider sayHello";
	}

	@Override
	public List<User> getUserByMap(Map<String, Object> param) {
		//这里需要优化
		String[] xmlCfg = new String[] {"classpath:/spring/spring-mybatis.xml"}; 
		ApplicationContext ac = new FileSystemXmlApplicationContext(xmlCfg); 
		//System.out.println(ac.getBean("userMapper")); 
		userMapper = (UserMapper) ac.getBean("userMapper");
		System.out.println("userMapper Result : "+userMapper);
		//getMapperByMethod();
		List<User> list =  userMapper.getUserByMap(param);
		if(null != list){
			System.out.println(this.getClass().getName()+":"+list.size());
		}else{
			System.out.println(this.getClass().getName()+":null");
		}
		System.out.println(userMapper);
		
		return list;
		//return null;
	}

	@Override
	public void saveUser(User user) {
		//userDao.saveUser(user);
		
	}

	public UserMapper getUserMapper() {
		return userMapper;
	}

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	/*@Override
	public void getMapperByMethod() {
		// TODO Auto-generated method stub
		
	}*/

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		
	}
	
}
