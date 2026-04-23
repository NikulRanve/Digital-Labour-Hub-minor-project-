package com.cdgi.dao;

import java.util.List;

import com.cdgi.pojo.User;
import com.cdgi.pojo.Worker;

public interface WorkerService {

    boolean registerWorker(Worker worker);

    Worker loginWorker(String email, String password);

    Worker getWorkerByEmail(String email);
    
    public List<Worker> getAllWorkers();
 
    public List<Worker> searchWorkers(String keyword);
    
    public List<Worker> getApprovedWorkers();
    
    public List<Worker> getPendingWorkers();
    
    public void updateStatus(String email, String status);
  
    
    public long getTotalWorkers();
    public long getPendingWorkerscount();
    public double getAverageRating();
    public long getActiveWorkers();
    
}