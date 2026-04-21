package com.cdgi.daoimpl;


import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdgi.dao.UserDao;
import com.cdgi.dao.UserService;
import com.cdgi.pojo.User;
import com.cdgi.repository.UserRepository;


@Service
public class UserServiceDaoImpl implements UserService {

	 @Autowired
	    private UserDao userDao;
	 
	    @Autowired
	    private UserRepository userRepository;


	    @Override
	    public boolean registerUser(User user) {
	        return userDao.saveUser(user);
	    }

	    @Override
	    public User loginUser(String email, String password) {
	        User user = userDao.getUserByEmail(email);

	        if (user != null && user.getPassword().equals(password)&& user.getRole().equals("USER")) {
	            return user;
	        }

	        return null;
	    }
	    
	    public List<User> getAllUsers() {
	        return userRepository.findAll();
	    }
	    
	    
	    public long getTotalUsers() {
	        return userRepository.count();
	    }

	    public long getActiveUsers() {
	        return userRepository.countByStatus("ACTIVE");
	    }

	    public long getBlockedUsers() {
	        return userRepository.countByStatus("BLOCKED");
	    }

	    public long getTodayUsers() {
	        return userRepository.countByCreatedAt(LocalDate.now());
	    }
	    
	    public List<User> searchUsers(String keyword) {
	        return userRepository.findByNameContainingIgnoreCaseOrEmailContainingIgnoreCase(keyword, keyword);
	    }
	}