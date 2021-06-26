package com.bookstore.model;

public class BookCategoryList {
	
	private int categoryListId;
	private String bookId;
	private int categoryId;
	
	public BookCategoryList() {
		
	}
	
	public BookCategoryList(String bookId, int categoryId) {
		this.bookId = bookId;
		this.categoryId = categoryId;
	}

	public int getCategoryListId() {
		return categoryListId;
	}

	public void setCategoryListId(int categoryListId) {
		this.categoryListId = categoryListId;
	}

	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
}
