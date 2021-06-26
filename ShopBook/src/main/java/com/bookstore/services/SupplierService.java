package com.bookstore.services;

import com.bookstore.dao.SupplierDAO;
import com.bookstore.model.Supplier;

import java.util.List;

public class SupplierService {
	
	private SupplierDAO supplierDAO;
	
	public SupplierService() {
		supplierDAO = new SupplierDAO();
	}
	
	public List<Supplier> findAll(){
		
		return supplierDAO.findAll();
	}

}
