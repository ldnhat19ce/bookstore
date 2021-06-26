package com.bookstore.model;

public class User {
	
	private int userId;
	private String username;
	private String password;
	private String fullname;
	private String address;
	private float price;
	private int roleId;
	
	public User() {
		
	}
	
	public User(String username, String password, int roleId) {
		this.username = username;
		this.password = password;
		this.roleId = roleId;
	}
	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	public User(String username, String password, int roleId, int userId) {
		this.username = username;
		this.password = password;
		this.roleId = roleId;
		this.userId = userId;
	}
	
	public User(int userId, int roleId) {
		this.userId = userId;
		this.roleId = roleId;
	}
	
	public User(int userId) {
		this.userId = userId;
		
	}
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
}
