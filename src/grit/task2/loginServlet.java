package grit.task2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public loginServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		loginBean bean = new loginBean();
		
		bean.setName(request.getParameter("name"));
		bean.setPassword(request.getParameter("password"));
		
		request.setAttribute("bean", bean);
		
		Cookie ck = new Cookie("name", bean.getName());
		ck.setMaxAge(300);
		
		if (bean.validate()) {
			response.addCookie(ck);
			request.getRequestDispatcher("welcome.jsp").include(request, response);
		} else {
			request.getRequestDispatcher("loginFail.jsp").forward(request, response);
		}
	}
}
