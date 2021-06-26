package com.bookstore.services;

import java.util.List;

import com.bookstore.dao.BookCategoryDAO;
import com.bookstore.model.BookCategory;

public class BookCategoryServices {
	
	private BookCategoryDAO bookCategoryDAO;
	
	public BookCategoryServices() {
		bookCategoryDAO = new BookCategoryDAO();
	}
	
	public List<BookCategory> findAll(){
		return bookCategoryDAO.findAll();
	}

}
