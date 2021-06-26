package com.bookstore.model;

import java.sql.Date;

public class ListCart {

	private int listCartId;
	private int userId;
	private String keyCode;
	private int cartAmount;
	private BookInformation bookInformation;
	private Date dateStore;
	private int status;

	public ListCart() {

	}

	public ListCart(String keyCode, BookInformation bookInformation, int cartAmount) {
		this.keyCode = keyCode;
		this.bookInformation = bookInformation;
		this.cartAmount = cartAmount;
	}

	public ListCart(String keyCode, BookInformation bookInformation) {
		this.keyCode = keyCode;
		this.bookInformation = bookInformation;

	}

	public ListCart(int userId, BookInformation bookInformation, int cartAmount) {

		this.userId = userId;
		this.bookInformation = bookInformation;
		this.cartAmount = cartAmount;
	}

	public ListCart(int userId, BookInformation bookInformation) {

		this.userId = userId;
		this.bookInformation = bookInformation;

	}

	public ListCart(BookInformation bookInformation) {

		this.bookInformation = bookInformation;
	}

	public ListCart(int cartAmount, int userId, BookInformation bookInformation) {
		this.cartAmount = cartAmount;
		this.userId = userId;
		this.bookInformation = bookInformation;
	}

	public int getListCartId() {
		return listCartId;
	}

	public void setListCartId(int listCartId) {
		this.listCartId = listCartId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getKeyCode() {
		return keyCode;
	}

	public void setKeyCode(String keyCode) {
		this.keyCode = keyCode;
	}

	public int getCartAmount() {
		return cartAmount;
	}

	public void setCartAmount(int cartAmount) {
		this.cartAmount = cartAmount;
	}

	public BookInformation getBookInformation() {
		return bookInformation;
	}

	public void setBookInformation(BookInformation bookInformation) {
		this.bookInformation = bookInformation;
	}

	public Date getDateStore() {
		return dateStore;
	}

	public void setDateStore(Date dateStore) {
		this.dateStore = dateStore;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
