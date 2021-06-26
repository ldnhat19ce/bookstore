package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.Country;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CountryDAO {

    private Connection conn;

    public CountryDAO(){
        conn = ConnectionUtils.getConnection();
    }


}
