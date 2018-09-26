package com.trueclaim.user.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.trueclaim.user.domain.RandomCity;
import com.trueclaim.user.domain.User;
import com.trueclaim.user.domain.UserCredentails;

@Service
public interface UserService {

	User login(User user);
	
	User createUser(User user);
	
	boolean forgetPassword(UserCredentails userCredentails);
	
	List<User> getAllUsers();
	
	User getUser(long id);
	
	User getUserByEmailId(String Id);
	
	User updateUser(User user);

	List<RandomCity> findAllRandomCities();
}
