package model;

import java.sql.Date;

public class NguoiDung {
	private String maND;
	private String tenND;
	private boolean phai;
	private Date ngaySinh;
	private String tenTK;
	private int chucVu;

	public NguoiDung(String maND, String tenND, boolean phai, Date ngaySinh, String tenTK, int chucVu) {
		this.maND = maND;
		this.tenND = tenND;
		this.phai = phai;
		this.ngaySinh = ngaySinh;
		this.tenTK = tenTK;
		this.chucVu = chucVu;
	}

	public String getMaND() {
		return maND;
	}

	public void setMaND(String maND) {
		this.maND = maND;
	}

	public String getTenND() {
		return tenND;
	}

	public void setTenND(String tenND) {
		this.tenND = tenND;
	}

	public boolean isPhai() {
		return phai;
	}

	public void setPhai(boolean phai) {
		this.phai = phai;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getTenTK() {
		return tenTK;
	}

	public void setTenTK(String tenTK) {
		this.tenTK = tenTK;
	}

	public int getChucVu() {
		return chucVu;
	}

	public void setChucVu(int chucVu) {
		this.chucVu = chucVu;
	}

}
