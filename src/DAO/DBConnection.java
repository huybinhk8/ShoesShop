package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection getConnection() {
		Connection connection = null;
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url = "jdbc:sqlserver://localhost:1433;databaseName=shoesshop";
		String user = "sa";
		String pass = "123456";
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			System.err.println("DAO: " + e);
		}
		return connection;
	}

	public static void main(String[] args) {
		Connection connection = DBConnection.getConnection();
		if (connection != null) {
			System.out.println("Kết nối database thành công");
		} else {
			System.out.println("Kết nối database thất bại");
		}
	}
}
