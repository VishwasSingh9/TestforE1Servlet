package lms.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lms.entity.User;
import lms.entity.dao.UserDao;
import lms.entity.daoImp.UserDaoImp;

@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doPost(req, resp);
		String user = req.getParameter("username");
		String password = req.getParameter("password");
		
		UserDao dao = new UserDaoImp();
		User username = null;
		try {
			long phone = Long.parseLong(user);
			user = dao.login(phone, password);
		}catch(Exception e) {
			user = dao.login(user, password);
		}
		if(user != null) {
			
			HttpSession session = req.getSession();
			session.setAttribute("login", user);
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}else {
			PrintWriter writer = resp.getWriter();
			writer.write("<html><body>");
			writer.write("<h3>Invalid Hai</h3>");
			writer.write("</body></html>");
			req.getRequestDispatcher("login.jsp").include(req, resp);
		}
	}
}
