package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookInformationDAO {
	private Connection conn;

	public BookInformationDAO() {
		conn = ConnectionUtils.getConnection();
	}

	// TODO: SELECT LIST

	public List<BookInformation> findWithPagination(int pageId, int total) {
		List<BookInformation> bookInformations = new ArrayList<>();

		String sql = "select * from book_information b inner join pulish p on b.pulish_id = p.pulish_id "
				+ "inner join author a on b.author_id = a.author_id "
				+ "inner join supplier s on b.supplier_id = s.supplier_id "
				+ "inner join form f on b.form_id = f.form_id order by b.book_id desc limit " + (pageId - 1) + ","
				+ total;
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				String bookId = rs.getString("b.book_id");
				String bookName = rs.getString("b.book_name");
				String bookContent = rs.getString("b.book_content");

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

				bookInformations.add(new BookInformation(bookId, bookName, bookContent, bookDate, bookWeight, bookSize,
						numberPage, author, form, pulish, supplier));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return bookInformations;
	}

	public int countRow() {
		int count = 0;

		String sql = "select count(*) from book_information";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ResultSet rs = ptmt.executeQuery();

			rs.next();

			count = rs.getInt(1);
		} catch (Exception e) {
			// TODO: handle exception
		}

		return count;
	}

	public BookInformation findById(String bookId) {

		String sql = "select b.book_id, b.book_name, b.book_content, b.book_amount, b.book_price, b.image_main, b.book_date, b.book_weight, b.book_size, "
				+ "b.numberpage, b.pulish_id, b.supplier_id, b.form_id, b.author_id, p.pulish_id, p.pulish_name, "
				+ "s.supplier_id, s.supplier_name, a.author_id, a.author_name, f.form_id, f.form_name"
				+ " from book_information b inner join pulish p on b.pulish_id = p.pulish_id"
				+ " inner join supplier s on b.supplier_id = s.supplier_id"
				+ " inner join author a on b.author_id = a.author_id"
				+ " inner join form f on b.form_id = f.form_id where b.book_id = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, bookId);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				bookId = rs.getString("b.book_id");
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

				return new BookInformation(bookId, bookName, bookContent, bookAmount, bookPrice, imageMain, bookDate,
						bookWeight, bookSize, numberPage, author, form, pulish, supplier);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;
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
			// TODO: handle exception
			try {
				conn.rollback();
			} catch (SQLException throwables) {
				throwables.printStackTrace();
			}
		}
		return -1;
	}

	public int updateMainImage(String imageName, String bookId) {
		String sql = "update book_information set image_main = ?" + " where book_id = ?";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			ptmt.setString(1, imageName);
			ptmt.setString(2, bookId);
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
	
	public int countRowByRomance() {
		int count = 0;

		String sql = "select count(*) from book_information b "
				+ "inner join book_categorylist c on b.book_id = c.book_id "
				+ "where c.category_code = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setString(1, "RM");

			ResultSet rs = ptmt.executeQuery();

			while(rs.next()) {
				count = rs.getInt(1);
			}

			
		} catch (Exception e) {
			// TODO: handle exception
		}

		return count;
	}

	public List<BookInformation> findBookByRomance(int pageId, int total) {
		List<BookInformation> bookInformations = new ArrayList<>();

		String sql = "select * from book_information b inner join pulish p on b.pulish_id = p.pulish_id "
				+ "inner join author a on b.author_id = a.author_id "
				+ "inner join supplier s on b.supplier_id = s.supplier_id "
				+ "inner join form f on b.form_id = f.form_id "
				+ "inner join book_categorylist c on c.book_id = b.book_id " + " where c.category_id = ?" + " limit "
				+ (pageId - 1) + "," + total;
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setInt(1, 1);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				String bookId = rs.getString("b.book_id");
				String bookName = rs.getString("b.book_name");
				String bookContent = rs.getString("b.book_content");

				Date bookDate = rs.getDate("b.book_date");
				float bookWeight = rs.getFloat("b.book_weight");
				String bookSize = rs.getString("b.book_size");
				String mainImage = rs.getString("b.image_main");
				int numberPage = rs.getInt("b.numberpage");
				float bookPrice = rs.getFloat("b.book_price");
				int bookAmount = rs.getInt("b.book_amount");

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
						mainImage, bookDate, bookWeight, bookSize, numberPage, author, form, pulish, supplier));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return bookInformations;
	}
}
