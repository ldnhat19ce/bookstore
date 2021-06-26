package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.Pulish;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PulishingDAO {

	private Connection conn;

	public PulishingDAO() {
		conn = ConnectionUtils.getConnection();
	}

	public List<Pulish> findAll(){
		List<Pulish> pulishs = new ArrayList<Pulish>();
		
		String sql = "select * from pulish";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				
				int pulishId = rs.getInt("pulish_id");
				String pulishName = rs.getString("pulish_name");
				
				pulishs.add(new Pulish(pulishId, pulishName));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return pulishs;
		
	}

}
