package com.bookstore.services;

import com.bookstore.dao.UserDAO;

public class LoginService {
	
	private UserDAO userDAO;
	
	public LoginService() {
		userDAO = new UserDAO();
	}
	
	public boolean isExist(String username, String password) {
		
		return userDAO.isExies(username, password);
	}
	
	
	public int checkRole(String username, String password) {
		return userDAO.checkRole(username, password);
	}
	
	public int findUserId(String username, String password) {
		return userDAO.findUserId(username, password);
	}
}
