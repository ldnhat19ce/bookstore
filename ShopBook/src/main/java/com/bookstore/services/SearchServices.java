package com.bookstore.services;

import java.util.List;

import com.bookstore.dao.SearchDAO;
import com.bookstore.model.BookInformation;

public class SearchServices {
	
	private SearchDAO searchDAO;
	
	public SearchServices() {
		searchDAO = new SearchDAO();
	}
	
	public List<BookInformation> searchBook(String keyWord){
		return searchDAO.searchBook(keyWord);
	}
}
