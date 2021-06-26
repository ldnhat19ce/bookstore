package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.*;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SearchDAO {
	private Connection conn;

	public SearchDAO() {
		conn = ConnectionUtils.getConnection();
	}

	public List<BookInformation> searchBook(String keyWord) {
		List<BookInformation> bookInformations = new ArrayList<>();

		String sql = "select * from book_information b inner join pulish p on b.pulish_id = p.pulish_id "
				+ "inner join author a on b.author_id = a.author_id "
				+ "inner join supplier s on b.supplier_id = s.supplier_id "
				+ "inner join form f on b.form_id = f.form_id where b.book_name like ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setString(1, "%"+keyWord+"%");

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				String bookId = rs.getString("b.book_id");
				String bookName = rs.getString("b.book_name");
				String bookContent = rs.getString("b.book_content");
				int bookAmount = rs.getInt("b.book_amount");
				float bookPrice = rs.getFloat("b.book_price");
				String imageMain = rs.getString("b.image_main");
				Date bookDate = rs.getDate("b.book_date");
				float bookWeight = rs.getFloat("b.book_weight");
				String bookSize = rs.getString("b.book_size");
				int numberPage = rs.getInt("b.numberpage");

				int supplierId = rs.getInt("s.supplier_id");
				String supplierName = rs.getString("s.supplier_name");
				Supplier supplier = new Supplier(supplierId, supplierName);

				int pulishId = rs.getInt("p.pulish_id");
				String pulishName = rs.getString("p.pulish_name");
				Pulish pulish = new Pulish(pulishId, pulishName);

				int formId = rs.getInt("f.form_id");
				String formName = rs.getString("f.form_name");
				Form form = new Form(formId, formName);

				int authorId = rs.getInt("a.author_id");
				String authorName = rs.getString("a.author_name");
				Author author = new Author(authorId, authorName);

				bookInformations.add(new BookInformation(bookId, bookName, bookContent, bookAmount, bookPrice,
						imageMain, bookDate, bookWeight, bookSize, numberPage, author, form, pulish, supplier));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return bookInformations;
	}
	
}
