package model;

public class SanPham {
	private String maSP;
	private String tenSP;
	private String tenHang;
	private boolean phai;
	private String hinh;
	private int soLuong;
	private double donGia;
	private String ngayNhap;

	public SanPham(String maSP, String tenSP, String tenHang, boolean phai, String hinh, int soLuong, double donGia,
			String ngayNhap) {
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.tenHang = tenHang;
		this.phai = phai;
		this.hinh = hinh;
		this.soLuong = soLuong;
		this.donGia = donGia;
		this.ngayNhap = ngayNhap;
	}

	public SanPham() {
	}

	public String getMaSP() {
		return maSP;
	}

	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public String getTenHang() {
		return tenHang;
	}

	public void setTenHang(String tenHang) {
		this.tenHang = tenHang;
	}

	public boolean isPhai() {
		return phai;
	}

	public void setPhai(boolean phai) {
		this.phai = phai;
	}

	public String getHinh() {
		return hinh;
	}

	public void setHinh(String hinh) {
		this.hinh = hinh;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public double getDonGia() {
		return donGia;
	}

	public void setDonGia(double donGia) {
		this.donGia = donGia;
	}

	public String getNgayNhap() {
		return ngayNhap;
	}

	public void setNgayNhap(String ngayNhap) {
		this.ngayNhap = ngayNhap;
	}

}
