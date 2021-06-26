package com.bookstore.services;

import java.util.List;

import com.bookstore.dao.PulishingDAO;
import com.bookstore.model.Pulish;

public class PulishingService {
	
	private PulishingDAO pulishingDAO;
	
	public PulishingService() {
		pulishingDAO = new PulishingDAO();
	}
	
	public List<Pulish> findAll(){
		
		return pulishingDAO.findAll();
	}

}
