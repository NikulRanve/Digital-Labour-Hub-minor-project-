package com.cdgi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class home_controller {
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
	 public String adminpage() {
		 return "admin-dashboard";
	 }
	 @GetMapping("user-dashboard")
	 public String userpage() {
		 return "user-dashboard";
	 }
	 

}
