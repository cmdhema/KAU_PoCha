package demo.db.persistence;

import java.util.List;

import demo.db.model.User;

public interface UserMapper {
	public void insertUser(User user);
	public List<User> getUsers();
}