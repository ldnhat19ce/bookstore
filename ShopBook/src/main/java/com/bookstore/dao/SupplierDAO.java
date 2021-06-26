package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.Supplier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SupplierDAO {
	
	private Connection conn;
	
	public SupplierDAO() {
		conn = ConnectionUtils.getConnection();
	}
	
	public List<Supplier> findAll(){
		List<Supplier> suppliers = new ArrayList<Supplier>();
		
		String sql = "select * from supplier";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				int supplierId = rs.getInt("supplier_id");
				String supplierName = rs.getString("supplier_name");
				
				suppliers.add(new Supplier(supplierId, supplierName));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return suppliers;
	}

}
