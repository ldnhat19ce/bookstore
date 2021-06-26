package com.bookstore.model;

public class BookCategory {

	private int categoryId;
	private String categoryName;
	private String categoryCode;

	public BookCategory() {

	}

	public BookCategory(int categoryId, String categoryName, String categoryCode) {
		this.categoryName = categoryName;
		this.categoryCode = categoryCode;
		this.categoryId = categoryId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	
	
}
