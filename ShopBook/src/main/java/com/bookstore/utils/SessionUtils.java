package com.bookstore.utils;

import javax.servlet.http.HttpSession;

import com.bookstore.model.User;

public class SessionUtils {
	
	private static final String USER_SESSION_KEY = "session_user";
	private static final String SESSION_KEY = "code";
	
	
	public static void storeUser(HttpSession session, String username, String password, int roleId, int userId) {
		User user = new User(username, password, roleId, userId);
		session.setAttribute(USER_SESSION_KEY, user);
	}
	public static void storeUser(HttpSession session, int roleId, int userId) {
		User user = new User(roleId, userId);
		session.setAttribute(USER_SESSION_KEY, user);
	}
	public static void storeUser(HttpSession session, int userId) {
		User user = new User(userId);
		session.setAttribute(USER_SESSION_KEY, user);
	}
	
	public static void storeSession(HttpSession session) {
		session.setAttribute(SESSION_KEY, session.getId());
	}
	
	public static void storeUserId(HttpSession session, int userId) {
		session.setAttribute("USERID", userId);
	}
	
	public static void storeRoleId(HttpSession session, int roleId) {
		session.setAttribute("ROLEID", roleId);
	}
	
	
	public static User getUserCookie(HttpSession session) {
		
		int userId = (int) session.getAttribute("USERID");
		int roleId = (int) session.getAttribute("ROLEID");
		User user = new User(userId, roleId);
		
		return user;
	}
	
	public static User getUser(HttpSession session) {
		return (User) session.getAttribute(USER_SESSION_KEY);
	}
	
	public static boolean isLogin(HttpSession session) {
		return getUser(session) != null;
	}
	
	public static void removeSession(HttpSession session) {
		session.removeAttribute(USER_SESSION_KEY);
	}
	
	

}
