package com.bookstore.services;

import java.util.List;

import com.bookstore.dao.FormDAO;
import com.bookstore.model.Form;

public class FormService {
	
	private FormDAO formDAO;
	
	public FormService() {
		formDAO = new FormDAO();
	}
	
	public List<Form> findAll(){
		
		return formDAO.findAll();
	}

}
