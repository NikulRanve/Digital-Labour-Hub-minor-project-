package com.cdgi.daoimpl;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cdgi.dao.WorkerDao;
import com.cdgi.pojo.Worker;
import com.cdgi.repository.WorkerRepository;


@Repository
public class WorkerDaoImpl implements WorkerDao {

    @Autowired
    private WorkerRepository workerRepository;

    @Override
    public boolean saveWorker(Worker worker) {
//        try {
//            workerRepository.save(worker);
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
        try {
			Optional<Worker>op=workerRepository.findById(worker.getEmail());
			if(op.isPresent())
				return false;
			
			else {
				
			workerRepository.save(worker);
			return true;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return false;
		}
    }

    @Override
    public Worker getWorkerByEmail(String email) {
        return workerRepository.findByEmail(email);
    }

	@Override
	public List<Worker> getAllWorkers() {
		return workerRepository.findAll();
	}

	
    
}