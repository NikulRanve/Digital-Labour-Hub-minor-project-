package com.cdgi.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cdgi.pojo.User;
import com.cdgi.pojo.Worker;

@Repository
public interface WorkerRepository extends JpaRepository<Worker, String> {

    Worker findByEmail(String email);
    
    List<Worker> findByFirstNameContainingIgnoreCaseOrEmailContainingIgnoreCase(String firstName, String email);

}