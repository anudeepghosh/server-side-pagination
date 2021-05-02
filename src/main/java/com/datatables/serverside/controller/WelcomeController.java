package com.datatables.serverside.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.datatables.serverside.entity.User;
import com.datatables.serverside.service.UserService;

@Controller
public class WelcomeController {
	
	@Autowired
	UserService userService;
	
	@GetMapping("/")
	public String getWelcomePage() {
		return "index";
	}
	
	@GetMapping("/simple")
	public String getSimplePage() {
		return "simple";
	}
	
	
	@GetMapping("/getAllUsers")
	public @ResponseBody List<User> getAllUsers(){		
		return userService.getAllUsers();
	}

}
