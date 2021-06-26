package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;

import javax.servlet.http.HttpSession;
import java.sql.*;

public class SessionKeyDAO {
	
	private Connection conn;
	
	public SessionKeyDAO() {
		conn = ConnectionUtils.getConnection();
	}
	
	public boolean isExist(HttpSession session) {
		String sql = "select * from session_key"+" where key_code = ?";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setInt(1, Integer.parseInt(session.getId()));
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	
	public int save(String keyCode) {
		String sql = "insert into session_key(key_code)"+" values(?)";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			
			ptmt.setString(1, keyCode);
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
