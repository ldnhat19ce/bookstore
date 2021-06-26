package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.BookInformation;
import com.bookstore.model.ListCart;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ListCartDAO {

	private Connection conn;

	public ListCartDAO() {
		conn = ConnectionUtils.getConnection();
	}

	public int saveSessionKey(ListCart listCart) {
		String sql = "insert into list_cart(key_code, book_id, cart_amount, status)" + " values(?,?,?,?)";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			ptmt.setString(1, listCart.getKeyCode());
			ptmt.setString(2, listCart.getBookInformation().getBookId());
			ptmt.setInt(3, 1);
			ptmt.setInt(4, 1);
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

	public int updateAmountByKeyAndBookId(ListCart listCart) {
		String sql = "update list_cart set cart_amount = ?, status = ?" + " where key_code = ?"
				+ " and book_id = ?";

		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setInt(1, listCart.getCartAmount());
			ptmt.setInt(2, listCart.getStatus());
			ptmt.setString(3, listCart.getKeyCode());
			ptmt.setString(4, listCart.getBookInformation().getBookId());

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

	public int saveUser(ListCart listCart) {
		String sql = "insert into list_cart(user_id, book_id, cart_amount, status)" + " values(?,?,?,?)";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			ptmt.setInt(1, listCart.getUserId());
			ptmt.setString(2, listCart.getBookInformation().getBookId());
			ptmt.setInt(3, 1);
			ptmt.setInt(4, 1);
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

	public int updateAmountByUserAndBookId(ListCart listCart) {
		String sql = "update list_cart set cart_amount = ?, status = ?"
				+ " where user_id = ?" + " and book_id = ?";

		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setInt(1, listCart.getCartAmount());
			ptmt.setInt(2, listCart.getStatus());
			ptmt.setInt(3, listCart.getUserId());
			ptmt.setString(4, listCart.getBookInformation().getBookId());

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

	public List<ListCart> findBySessionKey(HttpServletRequest request) {
		List<ListCart> listCarts = new ArrayList<>();

		String sql = "select * from list_cart l inner join book_information b on l.book_id = b.book_id "
				+ "where l.key_code = ? and l.status = 1";

		String CkeyCode = "";
		if (checkKeyCode(request)) {

			CkeyCode = getKeyCode(request);
		}

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, CkeyCode);

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
				String keyCode = rs.getString("l.key_code");
				int cartAmount = rs.getInt("l.cart_amount");

				BookInformation bookInformation = new BookInformation(bookId, bookName, bookContent, bookAmount,
						bookPrice, imageMain, bookDate, bookWeight, bookSize, numberPage);

				listCarts.add(new ListCart(keyCode, bookInformation, cartAmount));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return listCarts;
	}

	public List<ListCart> findByUser(int userId) {
		List<ListCart> listCarts = new ArrayList<>();

		String sql = "select * from list_cart l inner join book_information b on l.book_id = b.book_id "
				+ "where l.user_id = ? and l.status = 1";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setInt(1, userId);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {

				userId = rs.getInt("l.user_id");

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
				int cartAmount = rs.getInt("l.cart_amount");

				BookInformation bookInformation = new BookInformation(bookId, bookName, bookContent, bookAmount,
						bookPrice, imageMain, bookDate, bookWeight, bookSize, numberPage);

				listCarts.add(new ListCart(userId, bookInformation, cartAmount));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return listCarts;
	}

	public boolean checkKeyCode(HttpServletRequest request) {

		Cookie[] cookies = request.getCookies();

		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("b_cart")) {
				return true;
			}
		}
		return false;
	}

	public String getKeyCode(HttpServletRequest request) {
		String keyCode = "";

		Cookie[] cookies = request.getCookies();

		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("b_cart")) {
				keyCode = cookie.getValue();
			}
		}

		return keyCode;
	}

	public int findStatusByBookAndKey(String bookId, String keyCode){
		int status = 0;

		String sql = "select status from list_cart where book_id = ?"
				+ " and key_code = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, bookId);
			ptmt.setString(2, keyCode);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {

				status = rs.getInt(1);

			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return status;
	}

	public int findStatusByBookAndUser(String bookId, int userId){
		int status = 0;

		String sql = "select status from list_cart where book_id = ?"
				+ " and user_id = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, bookId);
			ptmt.setInt(2, userId);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {

				status = rs.getInt(1);

			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return status;
	}

	public boolean checkBookIdByKeyCode(String bookId, String keyCode) {

		String sql = "select * from list_cart where book_id = ?"
				+ " and key_code = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, bookId);
			ptmt.setString(2, keyCode);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return false;
	}

	public int finndAmountByBookIdAndKeyCode(String bookId, String keyCode) {

		int cartAmount = 0;

		String sql = "select cart_amount from list_cart where book_id = ?"
				+ " and key_code = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, bookId);
			ptmt.setString(2, keyCode);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {

				cartAmount = rs.getInt("cart_amount");

			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return cartAmount;
	}

	public boolean checkBookIdByUserId(String bookId, int userId) {
		String sql = "select * from list_cart where book_id = ?"
				+ " and user_id = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, bookId);
			ptmt.setInt(2, userId);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return false;
	}

	public int findAmountByBookIdAndUserId(String bookId, int userId) {

		int cartAmount = 0;

		String sql = "select cart_amount from list_cart where book_id = ?"
				+ " and user_id = ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, bookId);
			ptmt.setInt(2, userId);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {

				cartAmount = rs.getInt("cart_amount");

			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return cartAmount;
	}

	public int countRowProductByUserId(int userId) {
		int count = 0;
		String sql = "select count(*) from list_cart" + " where user_id = ? and status = 1";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setInt(1, userId);

			ResultSet rs = ptmt.executeQuery();

			rs.next();

			count = rs.getInt(1);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return count;
	}

	public int countRowProductByKeyCode(String keyCode) {
		int count = 0;
		String sql = "select count(*) from list_cart" + " where key_code = ? and status = 1";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, keyCode);

			ResultSet rs = ptmt.executeQuery();

			rs.next();

			count = rs.getInt(1);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return count;
	}

	public int deleteCartByKeyCode(String keyCode, String bookId) {
		String sql = "delete from list_cart " + "where key_code = ? " + "and book_id = ?";
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, keyCode);
			ptmt.setString(2, bookId);
			
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
	
	public int deleteCartByUserId(int userId, String bookId) {

		String sql = "delete from list_cart " + "where user_id = ? " + "and book_id = ?";
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, userId);
			ptmt.setString(2, bookId);

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

}
