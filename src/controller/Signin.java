package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import javafx.scene.control.Alert;
import model.NguoiDung;

/**
 * Servlet implementation class Singin
 */
@WebServlet("/Signin")
public class Signin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Signin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		boolean error = false;

		String tentk = request.getParameter("tentk");
		session.setAttribute("signin", tentk);
		if (tentk == null || tentk.equals("")) {
			error = true;
			String errTentk = "Tên tài khoản không được để trống";
			session.setAttribute("err_signin", errTentk);
		} else {
			session.setAttribute("err_signin", null);
		}

		String matkhau = request.getParameter("password");
		if (matkhau == null || matkhau.equals("")) {
			error = true;
			String errMatKhau = "Mật khẩu không được để trống";
			session.setAttribute("err_pass", errMatKhau);
		} else {
			session.setAttribute("err_pass", null);
		}

		String link;
		if (error) {
			//nhập dữ liệu sai thì trở về trang đăng nhập
			link = request.getContextPath() + "/signin.jsp";
			response.sendRedirect(link);
		} else {
			//nhận dữ liệu đúng
			if (UserDAO.dangNhap(tentk, matkhau)) {
			//kiểm tra đăng nhập thành công
				NguoiDung u = UserDAO.getThongTinNguoiDung(tentk);
				session.setAttribute("username", u.getTenTK());
				link = request.getContextPath()+ "/index.jsp";
				response.sendRedirect(link);
			} else {
				//kiểm tra đăng nhập thất bại
				String errLogin = "Sai tên đăng nhập hoặc mật khẩu";
				session.setAttribute("errLogin", errLogin);
				link = request.getContextPath() + "/signin.jsp";
				response.sendRedirect(link);
			}
		}
	}

}
