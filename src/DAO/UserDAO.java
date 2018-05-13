package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Lớp viết các hàm liên quan đến User hay Account
 * 
 * @author Khanh
 *
 */
public class UserDAO {

	/**
	 * Phương thức kiểm tra đăng nhập, kiểm tra xem tài khoản có trên database
	 * và mật khẩu trong đó có khớp không
	 * 
	 * @param taiKhoan
	 *            tên của user
	 * @param pass
	 *            mật khẩu của user
	 * @return <b>true</b> nếu khớp, <b>false</b> nếu không khớp
	 */
	public static boolean dangNhap(String taiKhoan, String matKhau) {
		try {
			Connection conn = DBConnection.getConnection();
			String sql = "select u.MATKHAU from NGUOIDUNG u where u.TENTK = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, taiKhoan);
			ResultSet rs = pr.executeQuery();
			String pass = "";
			while (rs.next()) {
				pass = rs.getString("MATKHAU");
				break;
			}
			if (pass.equals(matKhau)) {
				return true;
			}
			return false;
		} catch (Exception e) {
			System.err.println("hàm đăng nhập bị lỗi");
			e.printStackTrace();
			return false;
		}
	}

	public static boolean dangKy(String maND, String tenND, boolean phai, Date ngaySinh, String tenTk, String matKhau) {
		int i;
		try {
			Connection conn = DBConnection.getConnection();
			String sql = "exec p_dangky ?, ?, ?, ?, ?, ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, maND);
			pr.setString(2, tenND);
			int gioitinh = 0;
			if (phai) {
				gioitinh = 0;
			} else {
				gioitinh = 1;
			}
			pr.setInt(3, gioitinh);
			pr.setDate(4, ngaySinh);
			pr.setString(5, tenTk);
			pr.setString(6, matKhau);
			i = pr.executeUpdate();
			pr.close();
			conn.close();
		} catch (Exception e) {
			System.err.println("ham đăng ký bị lỗi ");
			e.printStackTrace();
			return false;
		}
		if (i > 0) {
			return true;
		}
		return false;
	}
}
