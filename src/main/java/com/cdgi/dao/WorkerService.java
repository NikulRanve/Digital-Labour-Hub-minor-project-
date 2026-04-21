package com.cdgi.dao;

import java.util.List;

import com.cdgi.pojo.User;
import com.cdgi.pojo.Worker;

public interface WorkerService {

    boolean registerWorker(Worker worker);

    Worker loginWorker(String email, String password);

    Worker getWorkerByEmail(String email);
    
    public List<Worker> getAllWorkers();
 
    List<Worker> searchWorkers(String keyword);
    
    long getTotalWorkers();
    long getPendingWorkers();
    double getAverageRating();
    long getActiveWorkers();
    
}