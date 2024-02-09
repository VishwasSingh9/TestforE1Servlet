package lms.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lms.entity.Book;
import lms.entity.dao.BookDao;
import lms.entity.daoImp.BookDaoImp;

@WebServlet("/addBook")
public class AddBook extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doPost(req, resp);
		String title=req.getParameter("title");
		String author=req.getParameter("author");
		int quentity=Integer.parseInt(req.getParameter("quantity"));
		double price=Double.parseDouble(req.getParameter("price"));
		String genre=req.getParameter("genre");
		
		Book book=new Book();
		book.setTitle(title);
		book.setAuthor(author);
		book.setQuantity(quentity);
		book.setPrice(price);
		book.setGenre(genre);
		
		BookDao Dao=new BookDaoImp();
		Dao.addBook(book);
	}
}
