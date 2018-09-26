package com.trueclaim.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trueclaim.user.dao.RandomRepository;
import com.trueclaim.user.dao.UserDAO;
import com.trueclaim.user.domain.RandomCity;
import com.trueclaim.user.domain.User;
import com.trueclaim.user.domain.UserCredentails;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private RandomRepository randomRepo;

	@Override
	public boolean forgetPassword(UserCredentails userCredentails) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public User login(User user) {
		User entityUser = userDAO.getUserByEmailId(user.getEmailId());
		if(user.getEmailId().equals(entityUser.getEmailId()) && user.getPassword().equals(entityUser.getPassword()))
			return entityUser;
		throw new RuntimeException("user is not authorized");
	}
	
	@Override
	public List<User> getAllUsers() {
		return userDAO.findAll();
	}

	@Override
	public User getUser(long id) {
		return userDAO.getOne(id);
	}

	@Override
	public User getUserByEmailId(String emaiiId) {
		return userDAO.getUserByEmailId(emaiiId);
	}

	@Override
	public User updateUser(User user) {
		return userDAO.save(user);
	}


	@Override
	public User createUser(User user) {
		return userDAO.save(user);
	}
	
	@Override
	public List<RandomCity> findAllRandomCities() {
		return randomRepo.findAll();
	}

}
