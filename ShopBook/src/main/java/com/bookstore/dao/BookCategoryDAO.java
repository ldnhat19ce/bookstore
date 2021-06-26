package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.BookCategory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookCategoryDAO {

	private Connection conn;

	public BookCategoryDAO() {
		conn = ConnectionUtils.getConnection();
	}

	public List<BookCategory> findAll() {
		List<BookCategory> bookCategories = new ArrayList<>();

		String sql = "select * from category_book";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				String categoryName = rs.getString("category_name");
				String categoryCode = rs.getString("category_code");
				int categoryId = rs.getInt("category_id");

				bookCategories.add(new BookCategory(categoryId, categoryName, categoryCode));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return bookCategories;
	}

}
