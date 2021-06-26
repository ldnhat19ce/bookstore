package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.CategoryDetailBook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDetailBookDAO {

    private Connection conn;

    public CategoryDetailBookDAO() {
        conn = ConnectionUtils.getConnection();
    }

    public List<CategoryDetailBook> findByCategoryId(int categoryId){
        List<CategoryDetailBook> categoryDetailBooks = new ArrayList<>();

        String sql = "SELECT * FROM categorybook_detail WHERE category_id = ?";

        try {
            PreparedStatement ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1, categoryId);

            ResultSet rs = ptmt.executeQuery();
            while(rs.next()){
                CategoryDetailBook categoryDetailBook = new CategoryDetailBook();
                categoryDetailBook.setCategoryDetailId(rs.getInt("id"));
                categoryDetailBook.setCategoryId(rs.getInt("category_id"));
                categoryDetailBook.setCategoryDetailName(rs.getString("category_detail_name"));
                categoryDetailBook.setGetCategoryDetailCode(rs.getString("category_detail_code"));

                categoryDetailBooks.add(categoryDetailBook);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return categoryDetailBooks;
    }
}
