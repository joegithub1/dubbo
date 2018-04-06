package com.dubbo.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.dubbo.demo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

		@Autowired
		//相当于 <dubbo:service interface="com.dubbo.demo.service.UserService" ref="userService" />
		//@Reference   
		private UserService userService;
		
		@RequestMapping("/users")
		@ResponseBody
		public String userList(){
			System.out.println("helllllllll");
			String str = userService.sayHello();
			userService.getUserByMap(null);
			userService.saveUser(null);
			return str;
		}
		
		@RequestMapping("/uu")
		@ResponseBody
		public String test(){
			
			System.out.println("hellllldddd");
			
			return "hell";
		}
		
}
