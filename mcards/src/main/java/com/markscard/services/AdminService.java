package com.markscard.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.markscard.dao.AdminDao;
import com.markscard.models.Admin;

@Service
public class AdminService {

	@Autowired private AdminDao dao;
	
	public void createAdmin() {
		
		if(dao.count()==0) {
			Admin admin = new Admin();
			admin.setUserid("admin");
			admin.setPassword("admin");
			
			dao.save(admin);
		}
	}
	
	public Admin validate(String userid,String pwd) {
		Optional<Admin> user = dao.findById(userid);
		if(user.isPresent() && user.get().getPassword().equals(pwd)) {
			return user.get();
		}
		return null;
	}
}
