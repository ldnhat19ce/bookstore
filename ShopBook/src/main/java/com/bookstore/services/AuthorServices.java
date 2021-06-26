package com.bookstore.services;

import com.bookstore.dao.AuthorDAO;
import com.bookstore.model.Author;

import java.util.List;

public class AuthorServices {
	
	private AuthorDAO authorDAO;
	
	public AuthorServices() {
		authorDAO = new AuthorDAO();
	}
	
	public List<Author> findAll(){
		
		return authorDAO.findAll();
	}

}
