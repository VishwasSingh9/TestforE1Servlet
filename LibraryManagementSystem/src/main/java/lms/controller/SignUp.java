package lms.controller;

import java.io.IOException;
import java.time.LocalDate;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lms.entity.User;
import lms.entity.dao.UserDao;
import lms.entity.daoImp.UserDaoImp;

@WebServlet("/signup")
public class SignUp extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doPost(req, resp);
		// long id = Integer.valueOf(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long phone = Long.parseLong(req.getParameter("phone"));
		LocalDate date = LocalDate.parse(req.getParameter("date"));
		String password = req.getParameter("password");
		
		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setPhone(phone);
		user.setDob(date);
		user.setPassword(password);
		
		UserDao dao = new UserDaoImp();
		dao.addUser(user);
	}
}
