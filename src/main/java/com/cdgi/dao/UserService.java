package com.cdgi.dao;

import java.util.List;

import com.cdgi.pojo.User;

public interface UserService {

    boolean registerUser(User user);

    User loginUser(String email, String password);
    
    public List<User> getAllUsers();
    
    public long getTotalUsers() ;
    
    public long getActiveUsers() ;
    
    public long getBlockedUsers() ;
    
    public long getTodayUsers() ;
    
    public List<User> searchUsers(String keyword) ;
    

}