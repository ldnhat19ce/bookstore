package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.*;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class FlashsaleProductDAO {

	private Connection conn;

	public FlashsaleProductDAO() {
		conn = ConnectionUtils.getConnection();
	}

	public int save(FlashsaleProduct flashsaleProduct) {
		String sql = "insert into flashsale_product(product_quantitylimit, product_discount, book_id, flashsale_id) "
				+ "values(?,?,?,?)";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			ptmt.setInt(1, flashsaleProduct.getProductQuantitylimit());
			ptmt.setFloat(2, flashsaleProduct.getProductDiscount());
			BookInformation bookInformation = flashsaleProduct.getBookInformation();
			ptmt.setString(3, bookInformation.getBookId());
			Flashsale flashsale = flashsaleProduct.getFlashsale();
			ptmt.setInt(4, flashsale.getFlashsaleId());
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

	public List<FlashsaleProduct> findBookById(int flashsaleId) {
		List<FlashsaleProduct> flashsaleProducts = new ArrayList<>();

		String sql = "select * from flashsale_product p inner join book_information b on p.book_id = b.book_id "
				+ "where flashsale_id = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setInt(1, flashsaleId);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {

				int productQuantitylimit = rs.getInt("p.product_quantitylimit");
				float productDiscount = rs.getFloat("p.product_discount");
				String bookId = rs.getString("b.book_id");
				String bookName = rs.getString("b.book_name");
				float bookPrice = rs.getFloat("b.book_price");
				BookInformation bookInformation = new BookInformation(bookId, bookName, bookPrice);

				flashsaleProducts.add(new FlashsaleProduct(productQuantitylimit, productDiscount, bookInformation));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return flashsaleProducts;
	}

	public boolean checkTime(Date startDate, Date endDate) {
		boolean check = false;

		DateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");

		java.util.Date currentDate = new java.util.Date();

		String startDatestr = simpleDateFormat.format(startDate);
		String endDatestr = simpleDateFormat.format(endDate);
		String currentDatestr = simpleDateFormat.format(currentDate);

		java.util.Date startDatepar = null;
		java.util.Date endDatepar = null;
		java.util.Date currentDatepar = null;

		try {
			startDatepar = simpleDateFormat.parse(startDatestr);
			endDatepar = simpleDateFormat.parse(endDatestr);
			currentDatepar = simpleDateFormat.parse(currentDatestr);

			if (startDatepar.getTime() - currentDatepar.getTime() <= 0
					&& currentDatepar.getTime() - endDatepar.getTime() <= 0) {
				check = true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return check;
	}

	public BookInformation findBookById(String bookId) {

		String sql = "select * from book_information b inner join pulish p on b.pulish_id = p.pulish_id "
				+ "inner join author a on b.author_id = a.author_id "
				+ "inner join supplier s on b.supplier_id = s.supplier_id "
				+ "inner join form f on b.form_id = f.form_id " + "where b.book_id = ?";

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

	public List<Flashsale> checkFlashsale() {
		List<Flashsale> flashsales = new ArrayList<Flashsale>();

		String sql = "select * from flashsale";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				int flashsaleId = rs.getInt("flashsale_id");
				String flashsaleName = rs.getString("flashsale_name");
				Date flashsaleStart = rs.getDate("flashsale_start");
				Date flashsaleEnd = rs.getDate("flashsale_end");

				if (checkTime(flashsaleStart, flashsaleEnd)) {
					flashsales.add(new Flashsale(flashsaleId, flashsaleName, flashsaleStart, flashsaleEnd));
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return flashsales;
	}

	public List<Flashsale> findFlashsale() {
		List<Flashsale> flashsales = checkFlashsale();

		return flashsales;
	}

	public List<FlashsaleProduct> findFlashsaleById() {
		List<FlashsaleProduct> flashsaleProducts = new ArrayList<FlashsaleProduct>();

		String sql = "select * from flashsale_product p inner join book_information b on p.book_id = b.book_id "
				+ "inner join flashsale f on p.flashsale_id = f.flashsale_id " + " where p.flashsale_id = ? "
				+ "order by p.product_id limit ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			List<Flashsale> flashsales = findFlashsale();

			for (Flashsale flashsale : flashsales) {
				ptmt.setInt(1, flashsale.getFlashsaleId());
			}

			ptmt.setInt(2, 10);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				int productId = rs.getInt("p.product_id");
				int productQuantitylimit = rs.getInt("p.product_quantitylimit");
				float productDiscount = rs.getFloat("p.product_discount");
				Date flashsaleEnd = rs.getDate("f.flashsale_end");
				Flashsale flashsale = new Flashsale(flashsaleEnd);
				String bookId = rs.getString("p.book_id");
				BookInformation bookInformation = findBookById(bookId);

				flashsaleProducts
						.add(new FlashsaleProduct(productId, productQuantitylimit, productDiscount, 
								bookInformation, flashsale));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return flashsaleProducts;
	}

}
