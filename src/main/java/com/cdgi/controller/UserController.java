package com.cdgi.controller;
import com.cdgi.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import com.cdgi.dao.UserDao;
import com.cdgi.dao.UserService;
import com.cdgi.dao.WorkerService;
import com.cdgi.pojo.User;
import com.cdgi.pojo.Worker;


@Controller
public class UserController {
	
	@Autowired
    private  UserRepository userRepository;

    @Autowired
    private UserService userService;
    @Autowired
    private UserDao userdao; 
    
    @Autowired
    private WorkerService workerService;

    UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @PostMapping("/register")
    public String register(@ModelAttribute User user, Model model) {

        // 1. Basic validation
        if (user.getName() == null || user.getName().isEmpty() ||
            user.getEmail() == null || user.getEmail().isEmpty() ||
            user.getPassword() == null || user.getPassword().isEmpty()) {

            model.addAttribute("errorMsg", "Please fill all required fields ❌");
            return "user_registration";
        }

        // 2. Check if user already exists
        User existingUser = userdao.getUserByEmail(user.getEmail());
        if (existingUser != null) {
            model.addAttribute("errorMsg", "Email already registered ⚠️");
            return "user_registration";
        }

        // 3. Set default role
        user.setRole("USER");
        user.setTotal_booking(0);
        user.setTermsAccepted(true);
        user.setStatus("ACTIVE");

        // 4. Save user
        boolean status = userService.registerUser(user);

        if (status) {
            model.addAttribute("successMsg", "Registration Successful ✅ Please Login");
            return "login";
        } else {
            model.addAttribute("errorMsg", "Something went wrong ❌ Try again");
            return "user_registration";
        }
    }

@PostMapping("/login")
public String login(@RequestParam String email,
                    @RequestParam String password,
                    Model model,
                    HttpSession session) {

    // 1. Check USER
    User user = userService.loginUser(email, password);
    if (user != null) {
    	if("ACTIVE".equals(user.getStatus())) {
        session.setAttribute("loggedUser", user);
        session.setAttribute("role", "USER");
        return "user-dashboard";
    	}
    	else {
    		  model.addAttribute("errorMsg", "Account Blocked");
    		  return "login";
    	}
    	
    		
    }

    // 2. Check WORKER
    Worker worker = workerService.loginWorker(email, password);
    if (worker != null) {
    	if("ACTIVE".equals(worker.getLogstatus())) {
        session.setAttribute("loggedUser", worker);
        session.setAttribute("role", "WORKER");
        return "worker-dashboard";
    	}
    	else {
  		  model.addAttribute("errorMsg", "Account Blocked");
  		  return "login";
  	}
    }

    // 3. Check ADMIN (optional)
    if (email.equals("admin@gmail.com") && password.equals("admin123")) {
        session.setAttribute("role", "ADMIN");
        
        List<Worker> pendingWorkers = workerService.getPendingWorkers();

        model.addAttribute("pendingWorkers", pendingWorkers);
        return "admin-dashboard";
    }

    // 4. Invalid
    model.addAttribute("errorMsg", "Invalid Email or Password ❌");
    return "login";
}
}