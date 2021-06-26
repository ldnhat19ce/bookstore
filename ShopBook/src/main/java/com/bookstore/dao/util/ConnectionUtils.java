package com.bookstore.dao.util;

import java.sql.Connection;

public class ConnectionUtils {
	public static Connection conn;

	// singleton
	public static Connection getConnection() {

		if (conn == null) {
			conn = MySQLConnectionUtils.getMySQLConnection();
		}

		return conn;
	}
}
