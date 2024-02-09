package lms.entity.daoImp;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import lms.entity.User;
import lms.entity.dao.UserDao;

public class UserDaoImp implements UserDao{
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("java");
	EntityManager em = emf.createEntityManager();
	
	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		EntityTransaction tr = null;
		
		try {
			tr = em.getTransaction();
			tr.begin();
			em.persist(user);
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public String login(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String login(long phone, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}
