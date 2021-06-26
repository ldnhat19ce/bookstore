package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BookInformationExcelDAO {

	private Connection conn;

	public BookInformationExcelDAO() {
		conn = ConnectionUtils.getConnection();
	}

	// SAVE
	public int save(BookInformation bookInformation) {

		String sql = "INSERT INTO book_information(book_id, book_name, book_content, book_amount, book_price, book_date,"
				+ " book_weight, book_size, numberpage, pulish_id, supplier_id, form_id, author_id)"
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, bookInformation.getBookId());
			ptmt.setString(2, bookInformation.getBookName());
			ptmt.setString(3, bookInformation.getBookContent());
			ptmt.setInt(4, bookInformation.getBookAmount());
			ptmt.setFloat(5, bookInformation.getBookPrice());
			ptmt.setDate(6, bookInformation.getBookDate());
			ptmt.setFloat(7, bookInformation.getBookWeight());
			ptmt.setString(8, bookInformation.getBooksize());
			ptmt.setInt(9, bookInformation.getNumberPage());

			Pulish pulish = bookInformation.getPulish();
			ptmt.setInt(10, pulish.getPulishId());

			Supplier supplier = bookInformation.getSupplier();
			ptmt.setInt(11, supplier.getSupplierId());

			Form form = bookInformation.getForm();
			ptmt.setInt(12, form.getFormId());

			Author author = bookInformation.getAuthor();
			ptmt.setInt(13, author.getAuthorId());
			ptmt.executeUpdate();
			conn.commit();
		} catch (Exception e) {
			try {
				e.printStackTrace();
				conn.rollback();
			} catch (SQLException throwables) {
				throwables.printStackTrace();
			}
		}
		return -1;
	}

}
