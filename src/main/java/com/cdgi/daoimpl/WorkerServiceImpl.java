package com.cdgi.daoimpl;


import java.util.List;
import com.cdgi.repository.WorkerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdgi.dao.WorkerDao;
import com.cdgi.dao.WorkerService;
import com.cdgi.pojo.Worker;


@Service
public class WorkerServiceImpl implements WorkerService {

	@Autowired
    private final WorkerRepository workerRepository;

    @Autowired
    private WorkerDao workerDao;

    WorkerServiceImpl(WorkerRepository workerRepository) {
        this.workerRepository = workerRepository;
    }

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
        return workerRepository.findByFirstNameContainingIgnoreCaseOrEmailContainingIgnoreCase(keyword, keyword);
    }

    // 📊 Stats Logic moved here

    @Override
    public long getTotalWorkers() {
        return workerDao.getAllWorkers().size();
    }

    @Override
    public long getPendingWorkerscount() {
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
    
    @Override
    public List<Worker> getApprovedWorkers() {
        return workerRepository.findByStatus("APPROVED");
    }
    
    @Override
    public List<Worker> getPendingWorkers() {
        return workerRepository.findByStatus("PENDING");
    }
    
    @Override
    public void updateStatus(String email, String status) {
        Worker worker = workerRepository.findByEmail(email);

        if (worker != null) {
            worker.setStatus(status);
            workerRepository.save(worker);
        }
    }
    
}
