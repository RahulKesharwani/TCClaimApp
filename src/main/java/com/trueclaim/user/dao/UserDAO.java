package com.trueclaim.user.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.trueclaim.user.domain.User;

@Repository
@Transactional
public interface UserDAO extends JpaRepository<User, Long> {

	User getUserByEmailId(String emailId);
	
}
