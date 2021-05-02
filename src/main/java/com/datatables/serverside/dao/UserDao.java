package com.datatables.serverside.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.datatables.serverside.entity.User;

public interface UserDao extends JpaRepository<User, Integer>{
	
	//public List<User> getAllUsers();

}
