package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Hang;
public class HangDAO {
	public static List<Hang> getHang() {
		List<Hang> list = new ArrayList<Hang>();
		try {
			Connection conn = DBConnection.getConnection();
			String sql = "select * from HANG;";
			PreparedStatement pr = conn.prepareStatement(sql);
			ResultSet rs = pr.executeQuery();
			String maHang1 = "";
			String tenHang = "";
			
			while (rs.next()) {
				tenHang = rs.getNString("TENHANG");
				maHang1 =rs.getString("MAHANG");
				list.add(new Hang(maHang1, tenHang));
			}
			conn.close();
		} catch (Exception e) {
			System.err.println("Lỗi Hàm getHang");
			e.printStackTrace();
		}
		return list;
	}
}
