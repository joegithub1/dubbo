package com.dubbo.demo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.dubbo.demo.entity.User;
import com.dubbo.demo.service.UserService;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
@RequestMapping("/user")
public class UserController {

		//相当于 <dubbo:service interface="com.dubbo.demo.service.UserService" ref="userService" />
		//@Reference   
		@Autowired
		private UserService userService;
		@RequestMapping("/users")
		@ResponseBody
		public String userList(){
			System.out.println("helllllllll");
			String str = userService.sayHello();
			userService.getUserByMap(null);
			//userService.saveUser(null);
			return str;
		}
		@RequestMapping("/saveuser")
		@ResponseBody
		public String saveUser(){
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			User user = new User();
			user.setUserName("zhangsan");
			user.setEmail("zhangsan@126.com");
			user.setNickName("张三");
			user.setPassWord("123456");
			user.setRegTime(sdf.format(new Date()));
			userService.saveUser(user);
			return "ok";
		}
		@RequestMapping("/uu")
		@ResponseBody
		public String test(){
			
			System.out.println("hellllldddd");
			
			return "hell";
		}
		
}
