package lms.entity.dao;

import java.util.List;
import lms.entity.Book;
import lms.entity.User;

public interface BookDao {
	boolean addBook(Book book);
	boolean updateBook(Book book);
	boolean deleteBook(Long bookId);
	Book findBookById(Long bookId);
	List<Book> listOfBooks();
	User login(String email ,String password);
}
