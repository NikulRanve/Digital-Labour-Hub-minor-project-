package com.cdgi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdgi.dao.UserService;
import com.cdgi.dao.WorkerService;
import com.cdgi.pojo.User;
import com.cdgi.pojo.Worker;
import com.cdgi.repository.UserRepository;
import com.cdgi.repository.WorkerRepository;

@Controller
public class admin_controller {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private WorkerService workerService;
	
	@Autowired
	private WorkerRepository workerRepository;
	
	
	@GetMapping("admin-user-management")
	public String userManagement(  @RequestParam(value = "keyword", required = false) String keyword,Model model) {
		
		
		List<User> users ;
	
		    if (keyword != null && !keyword.isEmpty()) {
		        users = userService.searchUsers(keyword);
		    } else {
		        users = userService.getAllUsers();
		    }

	
	    model.addAttribute("totalUsers", userService.getTotalUsers());
	    model.addAttribute("activeUsers", userService.getActiveUsers());
	    model.addAttribute("blockedUsers", userService.getBlockedUsers());
	    model.addAttribute("todayUsers", userService.getTodayUsers());

	    model.addAttribute("users", userService.getAllUsers());

	    model.addAttribute("users", users); //duplicate 

	    return "admin-user-management"; // your JSP name
	}
	
	
//	 @GetMapping("admin-worker-management")
//	 public String workerpage(Model model) {
//		 List<Worker> workers = workerService.getAllWorkers();
//		    model.addAttribute("workers", workers);
//		 return "admin-worker-management";
//	 }
//	 
	 @GetMapping("admin-worker-management")
	 public String workerpage(
	         @RequestParam(value = "keyword", required = false) String keyword,
	         Model model) {

	     List<Worker> workers;

	     if (keyword != null && !keyword.isEmpty()) {
	         workers = workerService.searchWorkers(keyword);
	     } else {
	         workers = workerService.getAllWorkers();
	     }

	    
	     model.addAttribute("totalWorkers", workerService.getTotalWorkers());
	     model.addAttribute("pendingWorkers", workerService.getPendingWorkers());
	     model.addAttribute("avgRating", workerService.getAverageRating());
	     model.addAttribute("activeWorkers", workerService.getActiveWorkers());

	     model.addAttribute("workers", workers);
	     model.addAttribute("keyword", keyword);

	     return "admin-worker-management";
	 }
	 
	 
	 @GetMapping("admin-booking-management")
	 public String bookingpage() {
		 return "admin-booking-management";
	 }
	 @GetMapping("admin-verification-management")
	 public String verificationpage() {
		 return "admin-verification-management";
	 }
	 
	 @GetMapping("/toggle-user")
	 public String toggleUser(@RequestParam String email) {

	     User u = userRepository.findByEmail(email);

	     if (u.getStatus().equals("ACTIVE"))
	         u.setStatus("BLOCKED");
	     else
	         u.setStatus("ACTIVE");

	     userRepository.save(u);

	     return "redirect:/admin-user-management";
	 }
	 
	 @GetMapping("/toggle-worker")
	 public String toggleWorker(@RequestParam String email) {
	    Worker w = workerRepository.findByEmail(email);
	    

	     if (w.getLogstatus().equals("ACTIVE"))
	         w.setLogstatus("BLOCKED");
	     else
	         w.setLogstatus("ACTIVE");

	     workerRepository.save(w);
	     return "redirect:/admin-worker-management";
	 }
	 
	 @GetMapping("/delete-user")
	 public String deleteUser(@RequestParam String email) {

	     User u = userRepository.findByEmail(email);

	     if (u != null) {
	         userRepository.delete(u);
	     }

	     return "redirect:/admin-user-management";
	 }
	 
	 @GetMapping("/delete-worker")
	 public String deleteWorker(@RequestParam String email) {
	   
		 Worker w=workerRepository.findByEmail(email);
		 
		 if (w != null) {
	         workerRepository.delete(w);
	     }
 
	     return "redirect:/admin-worker-management";
	 }
}
