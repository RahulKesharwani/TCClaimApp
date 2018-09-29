package com.trueclaim.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.trueclaim.user.domain.RandomCity;
import com.trueclaim.user.domain.User;
import com.trueclaim.user.service.UserService;

@RestController
@RequestMapping("/trueclaim")
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
	@GetMapping("/users")
	@PreAuthorize("hasAuthority('ADMIN_USER') or hasAuthority('STANDARD_USER')")
	public List<User> getAllUsers() {
		return userService.getAllUsers();
	}
	
	@PostMapping("/user")
	@PreAuthorize("hasAuthority('ADMIN_USER')")
	public User createUser(@RequestBody User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		return userService.createUser(user);
	}
	
	@GetMapping("/user/{id}")
	@PreAuthorize("hasAuthority('ADMIN_USER') or hasAuthority('STANDARD_USER')")
	public User getUser(@PathVariable long id) {
		return userService.getUser(id);
	}
	
	@GetMapping("/users/{emailId}")
	@PreAuthorize("hasAuthority('ADMIN_USER') or hasAuthority('STANDARD_USER')")
	public User getUserByEmailId(@PathVariable String emailId) {
		return userService.getUserByEmailId(emailId);
	}
	
	@RequestMapping(value ="/cities")
    @PreAuthorize("hasAuthority('ADMIN_USER') or hasAuthority('STANDARD_USER')")
    public List<RandomCity> getUser(){
        return userService.findAllRandomCities();
    }
}
