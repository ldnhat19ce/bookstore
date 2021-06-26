package com.bookstore.dao.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnectionUtils {

	/*private static String hostname = "node234575-bookstore123.j.layershift.co.uk";
	private static int port = 3306;
	private static String username = "root";
	private static String password = "QYObsh96435";
	private static String dbName = "bookstore";*/
	private static String hostname = "localhost";
	private static int port = 3306;
	private static String username = "root";
	private static String password = "123456";
	private static String dbName = "bookstore";

	public static Connection getMySQLConnection() {
		Connection conn = null;

		String connectionURL = generateConnectionURL(hostname, port, dbName);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(connectionURL, username, password);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("failed");
			e.printStackTrace();
		}

		return conn;
	}

	private static String generateConnectionURL(String hostname, int port, String dbName) {

		/*String connectionURL = "jdbc:mysql://" + hostname +"/" + dbName
				+ "?useUnicode=true&characterEncoding=UTF-8";*/
		String connectionURL = "jdbc:mysql://"+hostname+":"+port+"/"+dbName
				+"?useUnicode=true&characterEncoding=UTF-8";
		return connectionURL;
	}
	
	
}
