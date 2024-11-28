package com.markscard.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.markscard.dao.UserDao;
import com.markscard.models.User;

@Service
public class UserService {

	@Autowired private UserDao dao;
	
	public void saveUser(User user) {
		dao.save(user);
	}
	
	public List<User> allUsers(){
		return dao.findAll();
	}	
	
	public void updateCardStatus(int regno,String status) {
		User user = findUser(regno);
		if(status.equals("Deleted")) {
			dao.delete(user);
		}else {
			user.setStatus(status);
			dao.save(user);
		}
	}
	
	public User findUser(int regno) {
		return dao.findById(regno).get();
	}
	
	public User findUser(String email) {
		return dao.findByEmail(email).get();
	}
	
	public User validate(String userid,String pwd) {
		Optional<User> user = dao.findByEmail(userid);
		if(user.isPresent() && user.get().getPassword().equals(pwd)) {
			return user.get();
		}
		return null;
	}
}
