package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.BookCategoryList;

import java.sql.*;

public class BookCategoryListDAO {
	
	private Connection conn;
	
	public BookCategoryListDAO() {
		conn = ConnectionUtils.getConnection();
	}
	 
	public int save(BookCategoryList bookCategoryList) {
		
		String sql = "insert into book_categorylist(book_id, category_id) "+"values(?,?)";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			
			ptmt.setString(1, bookCategoryList.getBookId());
			ptmt.setInt(2, bookCategoryList.getCategoryId());
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
