package com.bookstore.services;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.dao.BookInfoImageDAO;
import com.bookstore.model.BookInformationImage;

public class BookImageService {
	
	private BookInfoImageDAO bookInfoImageDAO;
	
	public BookImageService() {
		bookInfoImageDAO = new BookInfoImageDAO();
	}
	
	public String uploadBookImage(HttpServletRequest request, HttpServletResponse response, String bookId) throws ServletException, IOException {
		
		return bookInfoImageDAO.upLoadBookImage(request, response, bookId);
	}
	
	public List<BookInformationImage> findById(String bookId){
		return bookInfoImageDAO.findById(bookId);
	}

}
