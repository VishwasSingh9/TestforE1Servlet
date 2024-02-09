package lms.entity.daoImp;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import lms.entity.Book;
import lms.entity.User;
import lms.entity.dao.BookDao;

public class BookDaoImp implements BookDao{
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("java");
	EntityManager em = emf.createEntityManager();
	
	@Override
	public boolean addBook(Book book) {
		
		EntityTransaction tr = null;
		
		try {
			tr = em.getTransaction();
			tr.begin();
			em.persist(book);
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean updateBook(Book book) {
		
		EntityTransaction tr = null;
		
		try {
			tr = em.getTransaction();
			tr.begin();
			em.merge(book);
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean deleteBook(Long bookId) {
		
		EntityTransaction tr = null;
		
		try {
			tr = em.getTransaction();
			tr.begin();
			Book book = em.find(Book.class, bookId);
			if (book != null) {
				em.remove(book);
			}
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public Book findBookById(Long bookId) {
		// TODO Auto-generated method stub
		return em.find(Book.class, bookId);
	}

	@Override
	public List<Book> listOfBooks() {
	     String jpql = "SELECT b FROM Book b";
	     Query query=em.createQuery(jpql);
	     List<Book> books = query.getResultList();
	     return books;
	}

	@Override
	public User login(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}
