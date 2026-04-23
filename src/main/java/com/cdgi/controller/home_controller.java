package com.cdgi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.cdgi.dao.WorkerService;
import com.cdgi.pojo.User;
import com.cdgi.pojo.Worker;

import org.springframework.ui.Model;


@Controller
public class home_controller {
	
	 @Autowired
	    private WorkerService workerService;
	
	 @GetMapping("/")
	    public String home() {
	        return "index";
	    }
	 @GetMapping("index")
	 public String homepage() {
		 return "index";
	 }
	 @GetMapping("worker_registration")
	 public String wregister() {
		 return "worker_registration";
	 }
	 @GetMapping("user_registration")
	 public String uregister() {
		 return "user_registration";
	 }
	 @GetMapping("login")
	 public String loginpage() {
		 return "login";
	 }
	 @GetMapping("contact")
	 public String contactpage() {
		 return "contact";
	 }
	 @GetMapping("admin-dashboard")
	 public String adminpage( Model model) {
		 List<Worker> pendingWorkers = workerService.getPendingWorkers();

	        model.addAttribute("pendingWorkers", pendingWorkers);
		 return "admin-dashboard";
	 }
	 @GetMapping("user-dashboard")
	 public String userpage() {
		 return "user-dashboard";
	 }
	 

}
