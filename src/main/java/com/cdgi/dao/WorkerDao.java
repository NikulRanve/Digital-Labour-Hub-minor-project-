package com.cdgi.dao;

import java.util.List;

import com.cdgi.pojo.Worker;

public interface WorkerDao {

    boolean saveWorker(Worker worker);

    Worker getWorkerByEmail(String email);
    
    public List<Worker> getAllWorkers();
    

    

}
