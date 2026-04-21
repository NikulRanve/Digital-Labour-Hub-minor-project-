package com.cdgi.dao;

import com.cdgi.pojo.User;

public interface UserDao {

    // Save user
    boolean saveUser(User user);

    // Find user by email (for login)
    User getUserByEmail(String email);

}