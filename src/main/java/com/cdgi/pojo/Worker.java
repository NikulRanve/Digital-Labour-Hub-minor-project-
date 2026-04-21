package com.cdgi.pojo;

import java.time.LocalDate;

import jakarta.persistence.*;

@Entity
public class Worker {

	// Personal Info
	@Id
	private String email;
	private String firstName;
	private String lastName;

	private String phone;
	private String aadhaar;

	private String password;


	// Skills & Experience
	private String skills; // comma separated
	private String experience;

	// Documents
	private String policeDoc; // file path
	private String aadhaarDoc; // file path
	private String profilephoto; // file path

	// Status
	private String status; // PENDING / APPROVED / REJECTED
	private String availability; // AVAILABLE / UNAVAILABLE
	private String logstatus;

	// Pricing
	private double hourlyRate;
	private double inspectionFee;
	
	//rating
	private double Rating;
	
	//date
	@Column(name = "created_at")
	private LocalDate createdAt;
	
	
	

	// Agreement
	private boolean termsAccepted;

	@PrePersist
	protected void onCreate() {
	    this.createdAt = LocalDate.now();
	}

	// Constructor
	public Worker() {
	}

	public Worker(String email, String firstName, String lastName, String phone, String aadhaar, String password,
			 String skills, String experience, String policeDoc, String aadhaarDoc,String profilephoto, String status,
			String availability, double hourlyRate, double inspectionFee, boolean termsAccepted) {
		super();
		this.email = email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phone = phone;
		this.aadhaar = aadhaar;
		this.password = password;
		
		this.skills = skills;
		this.experience = experience;
		this.policeDoc = policeDoc;
		this.aadhaarDoc = aadhaarDoc;
		this.profilephoto = profilephoto;
		this.status = status;
		
		this.availability = availability;
		this.hourlyRate = hourlyRate;
		this.inspectionFee = inspectionFee;
		this.termsAccepted = termsAccepted;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAadhaar() {
		return aadhaar;
	}

	public void setAadhaar(String aadhaar) {
		this.aadhaar = aadhaar;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getPoliceDoc() {
		return policeDoc;
	}

	public void setPoliceDoc(String policeDoc) {
		this.policeDoc = policeDoc;
	}

	public String getAadhaarDoc() {
		return aadhaarDoc;
	}

	public void setAadhaarDoc(String aadhaarDoc) {
		this.aadhaarDoc = aadhaarDoc;
	}
	

	public String getProfilephoto() {
		return profilephoto;
	}

	public void setProfilephoto(String profilephoto) {
		this.profilephoto = profilephoto;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public double getHourlyRate() {
		return hourlyRate;
	}

	public void setHourlyRate(double hourlyRate) {
		this.hourlyRate = hourlyRate;
	}

	public double getInspectionFee() {
		return inspectionFee;
	}

	public void setInspectionFee(double inspectionFee) {
		this.inspectionFee = inspectionFee;
	}

	public boolean isTermsAccepted() {
		return termsAccepted;
	}

	public void setTermsAccepted(boolean termsAccepted) {
		this.termsAccepted = termsAccepted;
	}

	public double getRating() {
		return Rating;
	}

	public void setRating(int rating) {
		Rating = rating;
	}

	public String getLogstatus() {
		return logstatus;
	}

	public void setLogstatus(String logstatus) {
		this.logstatus = logstatus;
	}
	
	
	// Getters & Setters
	
}