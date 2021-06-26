package com.bookstore.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.bookstore.dao.ListCartDAO;
import com.bookstore.model.BookInformation;
import com.bookstore.model.ListCart;

public class ListCartServices {

	private ListCartDAO listCartDAO;

	public ListCartServices() {
		listCartDAO = new ListCartDAO();
	}

	public int saveSessionKey(ListCart listCart) {
		return listCartDAO.saveSessionKey(listCart);
	}
	
	public int saveUser(ListCart listCart) {
		return listCartDAO.saveUser(listCart);
	}

	public ListCart createCart(String keyCode, String bookId) {

		BookInformation bookInformation = new BookInformation();
		bookInformation.setBookId(bookId);

		ListCart listCart = new ListCart(keyCode, bookInformation);

		return listCart;
	}

	public int saveSessionKey(String keyCode, String bookId) {

		ListCart listCart = createCart(keyCode, bookId);

		return saveSessionKey(listCart);
	}

	public ListCart createCart(int userId, String bookId) {

		BookInformation bookInformation = new BookInformation();
		bookInformation.setBookId(bookId);

		ListCart listCart = new ListCart(userId, bookInformation);

		return listCart;
	}
	
	
	//update amount by key code
	public int updateAmountByKeyAndBookId(ListCart listCart) {
		return listCartDAO.updateAmountByKeyAndBookId(listCart);
	}
	
	
	public ListCart updateAmount(String keyCode, String bookId, String cartAmount, int status) {
		ListCart listCart = new ListCart();
		
		listCart.setKeyCode(keyCode);
		BookInformation bookInformation = new BookInformation();
		bookInformation.setBookId(bookId);
		listCart.setBookInformation(bookInformation);
		listCart.setCartAmount(Integer.parseInt(cartAmount));
		listCart.setStatus(status);
		
		return listCart;
	}
	
	public int updateAmountByKeyAndBookId(String keyCode, String bookId, String cartAmount, int status) {
		ListCart listCart = updateAmount(keyCode, bookId, cartAmount, status);
		
		return updateAmountByKeyAndBookId(listCart);
	}

	//update amount by userid
	public int updateAmountByUserAndBookId(ListCart listCart) {
		return listCartDAO.updateAmountByUserAndBookId(listCart);
	}
	
	public ListCart updateAmount(int userId, String bookId, String cartAmount, int status) {
		
		ListCart listCart = new ListCart();
		
		listCart.setUserId(userId);
		
		BookInformation bookInformation = new BookInformation();
		bookInformation.setBookId(bookId);
		listCart.setBookInformation(bookInformation);
		
		listCart.setCartAmount(Integer.parseInt(cartAmount));
		listCart.setStatus(status);

		return listCart;
		
	}
	
	public int updateAmountByUserAndBookId(int userId, String bookId, String cartAmount, int status) {
		ListCart listCart = updateAmount(userId, bookId, cartAmount, status);
		
		return updateAmountByUserAndBookId(listCart);
	}
	/*********************************************/

	public int saveUser(int userId, String bookId) {
		ListCart listCart = createCart(userId, bookId);

		return saveUser(listCart);
	}
	
 

	public List<ListCart> findBySessionKey(HttpServletRequest request) {
		return listCartDAO.findBySessionKey(request);
	}

	public List<ListCart> findByUserId(int userId) {
		return listCartDAO.findByUser(userId);
	}
	
	public boolean checkBookIdByKeyCode(String bookId, String keyCode) {
		return listCartDAO.checkBookIdByKeyCode(bookId, keyCode);
	}
	
	public boolean checkBookIdByUserId(String bookId, int userId) {
		return listCartDAO.checkBookIdByUserId(bookId, userId);
	}
	
	public int findAmountByBookIdAndKeyCode(String bookId, String keyCode) {
		return listCartDAO.finndAmountByBookIdAndKeyCode(bookId, keyCode);
	}
	
	public int findAmountByBookIdAndUserId(String bookId, int userId) {
		return listCartDAO.findAmountByBookIdAndUserId(bookId, userId);
	}
	
	public float getPriceByKeyCode(HttpServletRequest request) {
		float sum = 0f;
		
		List<ListCart> listCarts = findBySessionKey(request);
		
		for(ListCart listCart : listCarts) {
			sum += listCart.getCartAmount() * listCart.getBookInformation().getBookPrice();
		}
		
		return sum;
	}
	
	public float getPriceByUserId(int userId) {
		float sum = 0f;
		
		List<ListCart> listCarts = findByUserId(userId);
		
		for(ListCart listCart : listCarts) {
			sum += listCart.getCartAmount() * listCart.getBookInformation().getBookPrice();
		}
		
		return sum;
	}
	
	//count row
	
	public int countRowProductByUserId(int userId) {
		return listCartDAO.countRowProductByUserId(userId);
	}
	
	public int countRowProductByKeyCode(String keyCode) {
		return listCartDAO.countRowProductByKeyCode(keyCode);
	}
	
	public int deleteCartByKeyCode(String keyCode, String bookId) {
		return listCartDAO.deleteCartByKeyCode(keyCode, bookId);
	}
	
	public int deleteCartByUserId(int userId, String bookId) {
		return listCartDAO.deleteCartByUserId(userId, bookId);
	}


	//find status
	public int findStatusByBookAndKey(String bookId, String keyCode){
		return listCartDAO.findStatusByBookAndKey(bookId, keyCode);
	}

	public int findStatusByBookAndUser(String bookId, int userId){
		return listCartDAO.findStatusByBookAndUser(bookId, userId);
	}
}
