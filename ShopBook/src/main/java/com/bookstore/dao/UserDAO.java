package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;

import java.sql.*;

public class UserDAO {

	private Connection conn;

	public UserDAO() {
		conn = ConnectionUtils.getConnection();
	}

	public boolean isExies(String username, String password) {

		String sql = "select * from user where username = ?" + " and password = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, username);
			ptmt.setString(2, password);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	
	public boolean isExies(String username) {

		String sql = "select * from user where username = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, username);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	public int checkRole(String username, String password) {

		int roleId = 0;

		String sql = "select role_id from user where username = ?" + " and password = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, username);
			ptmt.setString(2, password);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				roleId = rs.getInt("role_id");
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return roleId;
	}

	public int findUserId(String username, String password) {
		int userId = 0;

		String sql = "select user_id from user where username = ?" + " and password = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, username);
			ptmt.setString(2, password);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				userId = rs.getInt("user_id");
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return userId;
	}

	public int saveUser(String username, String password) {

		String sql = "insert into user(username, password, role_id) " + "values(?,?,?)";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			ptmt.setString(1, username);
			ptmt.setString(2, password);
			ptmt.setInt(3, 2);
			ptmt.executeUpdate();

			ResultSet rs = ptmt.getGeneratedKeys();
			if(rs.next()){
				id = rs.getInt(1);
			}
			conn.commit();
			return id;
		} catch (Exception e) {
			// TODO: handle exception
			try {
				conn.rollback();
			} catch (SQLException throwables) {
				throwables.printStackTrace();
			}
		}
		return -1;
	}


}
