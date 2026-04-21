package com.cdgi.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cdgi.pojo.User;


@Repository
public interface UserRepository extends JpaRepository<User, String> {

    // Custom method for login
    User findByEmail(String email);
    
    long countByStatus(String status);

    long countByCreatedAt(LocalDate date);
    
    List<User> findByNameContainingIgnoreCaseOrEmailContainingIgnoreCase(String name, String email);

}