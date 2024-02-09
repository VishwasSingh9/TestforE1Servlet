package lms.entity.dao;
import lms.entity.User;

public interface UserDao {
	boolean addUser (User user);
	String login(String email, String password);
	String login(long phone, String password);
}
