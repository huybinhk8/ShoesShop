package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import model.NguoiDung;

/**
 * Servlet implementation class dangKy
 */
@WebServlet("/dangKy")
public class dangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangKy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		boolean error = false;
		
		String tenND = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String sex = request.getParameter("sex");
		boolean gioitinh = true;
		if(sex.equals("nu")){
			gioitinh = false;
		}
		
		String username = request.getParameter("username");
		String pass = request.getParameter("pass");
		String repass = request.getParameter("repass");
		
		//bat loi
		session.setAttribute("tenND", tenND);
		if (tenND == null || tenND.equals("")) {
			error = true;
			String errTenND = "Họ và tên không được để trống";//them da ngon ngu
			session.setAttribute("err_tenND", errTenND);
		} else {
			session.setAttribute("err_tenND", null);
		}
		
		session.setAttribute("ngaysinh", birthday);
		if (birthday == null || birthday.equals("")) {
			error = true;
			String errngaysinh = "Ngày sinh không được để trống";//them da ngon ngu
			session.setAttribute("err_ngaysinh", errngaysinh);
		} else {
			session.setAttribute("err_ngaysinh", null);
		}
		
		session.setAttribute("user", username);
		if (username == null || username.equals("")) {
			error = true;
			String errusername = "Tên tà khoản không được để trống";//them da ngon ngu
			session.setAttribute("err_username", errusername);
		} else {
			session.setAttribute("err_username", null);
		}
		
		if (pass == null || pass.equals("")) {
			error = true;
			String errPass = "Mật khẩu không được để trống";//them da ngon ngu
			session.setAttribute("err_pass", errPass);
		} else {
			session.setAttribute("err_pass", null);
		}
		
		if (repass == null || repass.equals("")) {
			error = true;
			String errRePass = "Nhập lại mật khẩu không được để trống";//them da ngon ngu
			session.setAttribute("err_repass", errRePass);
		} else {
			session.setAttribute("err_repass", null);
		}
		
		if(!pass.equals(repass)){
			error = true;
			String err_notSame = "Mật khẩu không trùng khớp";
			session.setAttribute("err_notsame", err_notSame);
			
		}else{
			session.setAttribute("err_notsame", null);
		}
		String link;
		if (error) {
			//nhập dữ liệu sai thì trở về trang đăng nhập
			link = request.getContextPath() + "/signup.jsp";
			response.sendRedirect(link);
		}else{
			if(UserDAO.dangKy(tenND, gioitinh, birthday, username, pass)){
				NguoiDung u = UserDAO.getThongTinNguoiDung(username) ;
				session.setAttribute("username", u);
				link = request.getContextPath()+ "/index.jsp";
				response.sendRedirect(link);
			}else {
				//kiểm tra đăng nhập thất bại
				link = request.getContextPath() + "/signup.jsp";
				response.sendRedirect(link);
			}
		}
		
	}

}
