package demo.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.db.model.User;
import demo.db.persistence.UserMapper;

@Service
public class UserService {

	@Autowired
	private UserMapper mapper;
	
	public List<User> getUsers() {
		return mapper.getUsers();
	}
}
