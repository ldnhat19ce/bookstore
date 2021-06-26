package com.bookstore.services;

import com.bookstore.dao.BookCategoryListDAO;
import com.bookstore.model.BookCategoryList;

public class BookCategoryListServices {
	
	private BookCategoryListDAO bookCategoryListDAO;
	
	public BookCategoryListServices() {
		bookCategoryListDAO = new BookCategoryListDAO();
	}
	
	
	public int save(BookCategoryList bookCategoryList) {
		return bookCategoryListDAO.save(bookCategoryList);
	}
	
	public BookCategoryList createCategory(String bookId, int categoryId) {
		
		BookCategoryList bookCategoryList = new BookCategoryList();
		bookCategoryList.setBookId(bookId);
		bookCategoryList.setCategoryId(categoryId);
		
		return bookCategoryList;
	}
	
	public int save(String bookId, int categoryId) {
		
		BookCategoryList bookCategoryList = createCategory(bookId, categoryId);
		
		return save(bookCategoryList);
				
	}
}
