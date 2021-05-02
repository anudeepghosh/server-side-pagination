package com.datatables.serverside.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.datatables.serverside.entity.User;

@Service
public interface UserService {
	
	public List<User> getAllUsers();

}
