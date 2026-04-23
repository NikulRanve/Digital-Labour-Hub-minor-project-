package com.cdgi.controller;


import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.cdgi.dao.WorkerService;
import com.cdgi.pojo.Worker;


@Controller
public class WorkerController {

    @Autowired
    private WorkerService workerService;

    // Registration
    @PostMapping("/worker/register")
    public String registerWorker(

            @RequestParam("firstName") String firstName,
            @RequestParam("lastName") String lastName,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("phone") String phone,
            @RequestParam("aadhaar") String aadhaar,
            @RequestParam("skills") String skills,
            @RequestParam("experience") String experience,
            @RequestParam("hourlyRate") double hourlyRate,
            @RequestParam("inspectionFee") double inspectionFee,

            @RequestParam("profilephoto") MultipartFile profilePhoto,
            @RequestParam("policeDoc") MultipartFile policeDoc,
            @RequestParam("aadhaarDoc") MultipartFile aadhaarDoc,

            Model m) throws Exception {

        // 1. Create object
        Worker w = new Worker();
        w.setFirstName(firstName);
        w.setLastName(lastName);
        w.setEmail(email);
        w.setPassword(password);
        w.setPhone(phone);
        w.setAadhaar(aadhaar);
        w.setSkills(skills);
        w.setExperience(experience);
        w.setHourlyRate(hourlyRate);
        w.setInspectionFee(inspectionFee);

        // 2. Default values
        w.setStatus("PENDING");
        w.setAvailability("AVAILABLE");
        w.setTermsAccepted(true);
        w.setLogstatus("ACTIVE");

        // 3. File paths
        String basePath = "C:\\javatraining\\JEE\\spring-boot\\digital_lobour_hub\\src\\main\\webapp\\";

        String profileDir = basePath + "profile\\";
        String policeDir = basePath + "police\\";
        String aadhaarDir = basePath + "aadhaar\\";

        new File(profileDir).mkdirs();
        new File(policeDir).mkdirs();
        new File(aadhaarDir).mkdirs();

        // 4. File names
        String profileName = System.currentTimeMillis() + "_" + profilePhoto.getOriginalFilename();
        String policeName = System.currentTimeMillis() + "_" + policeDoc.getOriginalFilename();
        String aadhaarName = System.currentTimeMillis() + "_" + aadhaarDoc.getOriginalFilename();

        // 5. Save paths in object
        w.setProfilephoto(profileName);
        w.setPoliceDoc(policeName);
        w.setAadhaarDoc(aadhaarName);

        // 6. Save to DB
        if (workerService.registerWorker(w)) {

            // 7. Save files AFTER DB success
            profilePhoto.transferTo(new File(profileDir + profileName));
            policeDoc.transferTo(new File(policeDir + policeName));
            aadhaarDoc.transferTo(new File(aadhaarDir + aadhaarName));

            m.addAttribute("successMsg", "Worker Registered Successfully ✅ Awaiting Approval");
            return "login";
        } else {
            m.addAttribute("errorMsg", "Worker Already Exists ❌");
            return "worker_registration";
        }
    }
    
    @GetMapping("/workers")
    public String showWorkers(Model model) {

        List<Worker> workers = workerService.getApprovedWorkers();

        model.addAttribute("workers", workers);

        return "user-dashboard";
    }
}