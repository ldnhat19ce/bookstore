package com.bookstore.services;

import javax.servlet.http.HttpSession;

import com.bookstore.dao.SessionKeyDAO;

public class SessionKeyServices {
	
	private SessionKeyDAO sessionKeyDAO;
	
	public SessionKeyServices() {
		sessionKeyDAO = new SessionKeyDAO();
	}
	
	public int save(String keyCode) {
		return sessionKeyDAO.save(keyCode);
	}
	
	public boolean isExist(HttpSession session) {
		return sessionKeyDAO.isExist(session);
	}

}
