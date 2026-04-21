package com.cdgi.daoimpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdgi.dao.WorkerDao;
import com.cdgi.dao.WorkerService;
import com.cdgi.pojo.Worker;


@Service
public class WorkerServiceImpl implements WorkerService {

    @Autowired
    private WorkerDao workerDao;

    @Override
    public boolean registerWorker(Worker worker) {
        worker.setStatus("PENDING");
        worker.setAvailability("AVAILABLE");
        worker.setTermsAccepted(true);
        return workerDao.saveWorker(worker);
    }

    @Override
    public Worker loginWorker(String email, String password) {
        Worker worker = workerDao.getWorkerByEmail(email);

        if (worker != null && worker.getPassword().equals(password)) {
            return worker;
        }
        return null;
    }

    @Override
    public Worker getWorkerByEmail(String email) {
        return workerDao.getWorkerByEmail(email);
    }

	@Override
	public List<Worker> getAllWorkers() {
		return workerDao.getAllWorkers();
		
	}
	

    @Override
    public List<Worker> searchWorkers(String keyword) {
        return workerDao.searchWorkers(keyword);
    }

    // 📊 Stats Logic moved here

    @Override
    public long getTotalWorkers() {
        return workerDao.getAllWorkers().size();
    }

    @Override
    public long getPendingWorkers() {
        return workerDao.getAllWorkers().stream()
                .filter(w -> "PENDING".equalsIgnoreCase(w.getStatus()))
                .count();
    }

    @Override
    public double getAverageRating() {
        return Math.round(
                workerDao.getAllWorkers().stream()
                        .mapToDouble(Worker::getRating)
                        .average()
                        .orElse(0.0) * 10.0
        ) / 10.0;
    }

    @Override
    public long getActiveWorkers() {
        return workerDao.getAllWorkers().stream()
                .filter(w -> "AVAILABLE".equalsIgnoreCase(w.getAvailability()))
                .count();
    }
    
    
}
