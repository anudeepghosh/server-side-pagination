package com.datatables.serverside.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.datatables.serverside.dao.UserDao;
import com.datatables.serverside.entity.User;
import com.datatables.serverside.service.UserService;

@Component
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserDao userDao;

	@Override
	public List<User> getAllUsers() {
		return userDao.findAll();
	}
}
