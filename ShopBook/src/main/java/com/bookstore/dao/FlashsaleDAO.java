package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.*;

import javax.swing.plaf.nimbus.State;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class FlashsaleDAO {
	
	private Connection conn;
	
	public FlashsaleDAO() {
		conn = ConnectionUtils.getConnection();
	}
	
	public List<FlashsaleProduct> findByTime(){
		List<FlashsaleProduct> flashsaleProducts = new ArrayList<FlashsaleProduct>();
		
		
		return flashsaleProducts;
	}
	
	public List<Flashsale> findAll(){
		List<Flashsale> flashsales = new ArrayList<Flashsale>();
		
		String sql= "select * from flashsale";
			try {
				PreparedStatement ptmt = conn.prepareStatement(sql);
				
				ResultSet rs = ptmt.executeQuery();
				
				while(rs.next()) {
					int flashsaleId = rs.getInt("flashsale_id");
					String flashsaleName = rs.getString("flashsale_name");
					Date flashsaleStart = rs.getDate("flashsale_start");
					Date flashsaleEnd = rs.getDate("flashsale_end");
					
					String checkTime = checkTime(flashsaleStart, flashsaleEnd);
					
					String[] checkTimeSplit = checkTime.split("&&"); 
					int countRow = findRowById(flashsaleId);
					
					flashsales.add(new Flashsale(flashsaleId, flashsaleName, flashsaleStart, flashsaleEnd,
							checkTimeSplit[0], countRow, checkTimeSplit[1]));
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		return flashsales;
	}
	
	public int findRowById(int flashsaleId) {
		
		int count = 0;
		
		String sql = "select count(*) from flashsale_product p inner join flashsale f on p.flashsale_id = f.flashsale_id"
				+ " where f.flashsale_id = ?";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setInt(1, flashsaleId);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return count;
	}
	
	
	
	public List<BookInformation> findAllBook(){
		List<BookInformation> bookInformations = new ArrayList<BookInformation>();
		
			String sql = "select * from book_information b inner join pulish p on b.pulish_id = p.pulish_id "
					+ "inner join author a on b.author_id = a.author_id "
					+ "inner join supplier s on b.supplier_id = s.supplier_id "
					+ "inner join form f on b.form_id = f.form_id";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
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
		}
		return bookInformations;
	}
	
	
	public BookInformation findBookById(String bookId) {
		
		String sql = "select * from book_information b inner join form f on b.form_id = f.form_id "
				+ "inner join author a on b.author_id = a.author_id "
				+ "inner join supplier s on b.supplier_id = s.supplier_id "
				+ "inner join pulish p on b.pulish_id = p.pulish_id where b.book_id = ?";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setString(1, bookId);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
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
				
				return new BookInformation(bookId, bookName, bookContent, bookAmount, bookPrice, imageMain
						, bookDate, bookWeight, bookSize, numberPage, author, form, pulish, supplier);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	
	// CHECK TIME
	public String checkTime(Date startDate, Date endDate) {
		String time = "";
		
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
			
			if(endDatepar.getTime() - currentDatepar.getTime() < 0) {
				time = "Đã kết Thúc&& ";
			}else if((endDatepar.getTime() - currentDatepar.getTime()) >= 0 && (startDatepar.getTime() - currentDatepar.getTime()) < 0) {
				
				long getDiff = endDatepar.getTime() - currentDatepar.getTime();
				
				long getDayDiff = getDiff / (24 * 60 * 60 * 1000);
				time = "đang diễn ra &&còn "+getDayDiff+" ngày";
			}else if((startDatepar.getTime() - currentDatepar.getTime()) > 0) {
				long getDiff = startDatepar.getTime() - currentDatepar.getTime();
				
				long getDayDiff = getDiff / (24 * 60 * 60 * 1000);
				time = "sắp diễn ra &&bắt đầu sau "+getDayDiff+" ngày";
			}else if(startDatepar.getTime() - currentDatepar.getTime() == 0) {
				long getDiff = endDatepar.getTime() - startDatepar.getTime();
				
				long getDayDiff = getDiff / (24 * 60 * 60 * 1000);
				time = "đang diễn ra &&còn "+getDayDiff+" ngày";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return time;
	}
	
	public Flashsale findFlashsaleById(int flashsaleId) {
		
		String sql = "select * from flashsale where flashsale_id = ?";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setInt(1, flashsaleId);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				flashsaleId = rs.getInt("flashsale_id");
				String flashsaleName = rs.getString("flashsale_name");
				Date flashsaleStart = rs.getDate("flashsale_start");
				Date flashsaleEnd = rs.getDate("flashsale_end");
				
				String checkTime = checkTime(flashsaleStart, flashsaleEnd);
				
				String[] checkTimeSplit = checkTime.split("&&"); 
				
				return new Flashsale(flashsaleId, flashsaleName, flashsaleStart, flashsaleEnd, checkTimeSplit[0], checkTimeSplit[1]);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	
	// INSERT EVENT SALE
	public int saveFlashsale(Flashsale flashsale) {
		
		String sql = "insert into flashsale(flashsale_name, flashsale_start, flashsale_end)"+" values(?,?,?)";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			
			ptmt.setString(1, flashsale.getFlashsaleName());
			ptmt.setDate(2, flashsale.getFlashsaleStart());
			ptmt.setDate(3, flashsale.getFlashsaleEnd());
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
