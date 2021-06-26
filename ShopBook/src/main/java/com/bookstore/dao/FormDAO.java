package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.Form;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FormDAO {
	
	private Connection conn;
	
	public FormDAO() {
		conn = ConnectionUtils.getConnection();
	}
	
	public List<Form> findAll(){
		List<Form> forms = new ArrayList<>();
		
		String sql = "select * from form";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				int formId = rs.getInt("form_id");
				String formName = rs.getString("form_name");
				
				forms.add(new Form(formId, formName));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return forms;
	}

}
