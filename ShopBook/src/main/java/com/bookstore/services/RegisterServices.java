package com.bookstore.services;

import com.bookstore.dao.UserDAO;

public class RegisterServices {
	
	private UserDAO userDAO;
	
	public RegisterServices() {
		userDAO = new UserDAO();
	}
	
	public boolean isExist(String username) {
		return userDAO.isExies(username);
	}
	
	public int save(String username, String password) {
		
		if(!isExist(username)) {
			return userDAO.saveUser(username, password);
		}
		
		return -1;
	}

}
