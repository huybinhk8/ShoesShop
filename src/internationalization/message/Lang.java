package internationalization.message;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Lang
 */
@WebServlet("/Lang")
public class Lang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Lang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("có vô");
		HttpSession session = request.getSession();
		String lang = request.getParameter("lang");
		System.out.println("lang: " + lang);
		String ngonngu = "";
		String quocgia = "";
		if(lang.equals("vi")){
			ngonngu = "vi";
			quocgia = "VN";
			session.setAttribute("locale", new Locale(ngonngu, quocgia));
		}else{
			ngonngu = "en";
			quocgia = "US";
			session.setAttribute("locale", new Locale(ngonngu, quocgia));
		}
		System.out.println(session.getAttribute("locale").toString());
		System.out.println(Language.getBundles("title.home", (Locale) session.getAttribute("locale")));
		response.sendRedirect(request.getHeader("referer"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
