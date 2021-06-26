package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.Author;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AuthorDAO {
	
	private Connection conn;
	
	public AuthorDAO() {
		conn = ConnectionUtils.getConnection();
	}
	
	public List<Author> findAll(){
		List<Author> authors = new ArrayList<>();
		
		String sql = "select * from author";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				int authorId = rs.getInt("author_id");
				String authorName = rs.getString("author_name");
				
				authors.add(new Author(authorId, authorName));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return authors;
	}

}
