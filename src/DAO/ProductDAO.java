package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.SanPham;

public class ProductDAO {
	public static SanPham getSanPham(String maSP1) {
		try {
			Connection conn = DBConnection.getConnection();
			String sql = "select s.*, h.TENHANG from SANPHAM s join HANG h on s.MAHANG=h.MAHANG where MASP=?;";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, maSP1);
			ResultSet rs = pr.executeQuery();
			String maSP = "";
			String tenSP = "";
			String tenHang = "";
			boolean phai = false;
			String hinh = "";
			int soLuong = 0;
			double donGia = 0;
			String ngayNhap = "";
			while (rs.next()) {
				maSP = rs.getString("MASP");
				tenSP = rs.getNString("TENSP");
				tenHang = rs.getNString("TENHANG");
				int sex = rs.getInt("PHAI");
				phai = true;
				if (sex == 1) {
					phai = false;
				}
				hinh = rs.getNString("HINH");
				soLuong = rs.getInt("SOLUONG");
				donGia = rs.getDouble("DONGIA");
				ngayNhap = rs.getString("NGAYNHAP");
				break;
			}
			conn.close();
			return new SanPham(maSP, tenSP, tenHang, phai, hinh, soLuong, donGia, ngayNhap);
		} catch (Exception e) {
			System.err.println("Lỗi Hàm getSanPham");
			e.printStackTrace();
			return new SanPham();
		}
	}

	public static List<SanPham> getAllProduct() {
		List<SanPham> list = new ArrayList<SanPham>();
		try {
			Connection conn = DBConnection.getConnection();
			String sql = "select s.*, h.TENHANG from SANPHAM s join HANG h on s.MAHANG=h.MAHANG;";
			PreparedStatement pr = conn.prepareStatement(sql);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				String maSP = rs.getString("MASP");
				String tenSP = rs.getNString("TENSP");
				String tenHang = rs.getNString("TENHANG");
				int sex = rs.getInt("PHAI");
				boolean phai = true;
				if (sex == 1) {
					phai = false;
				}
				String hinh = rs.getNString("HINH");
				int soLuong = rs.getInt("SOLUONG");
				double donGia = rs.getDouble("DONGIA");
				String ngayNhap = rs.getString("NGAYNHAP");
				list.add(new SanPham(maSP, tenSP, tenHang, phai, hinh, soLuong, donGia, ngayNhap));
			}
			conn.close();
		} catch (Exception e) {
			System.err.println("Lỗi Hàm getAllProduct");
			e.printStackTrace();
		}
		return list;
	}

	public static List<SanPham> getProduct(String maHang, boolean gioiTinh) {
		List<SanPham> list = new ArrayList<SanPham>();
		try {
			int phai = 0;
			if (gioiTinh == false) {
				phai = 1;
			}
			Connection conn = DBConnection.getConnection();
			String sql = "exec sp_thongtinsanpham ?,?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, maHang);
			pr.setInt(2, phai);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				String maSP = rs.getString("MASP");
				String tenSP = rs.getNString("TENSP");
				String tenHang = rs.getNString("TENHANG");
				String hinh = rs.getNString("HINH");
				int soLuong = rs.getInt("SOLUONG");
				double donGia = rs.getDouble("DONGIA");
				String ngayNhap = rs.getString("NGAYNHAP");
				list.add(new SanPham(maSP, tenSP, tenHang, gioiTinh, hinh, soLuong, donGia, ngayNhap));
			}
			conn.close();
		} catch (Exception e) {
			System.err.println("Lỗi Hàm getProduct");
			e.printStackTrace();
		}
		return list;
	}
}
