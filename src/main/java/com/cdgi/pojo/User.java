package com.cdgi.pojo;


import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

@Entity
public class User {

    @Id
    private String email;
    private String name;
    private String phone;
    private String password;
    private String address;
    private String role;   // USER / WORKER / ADMIN
 
    private String status;  
    private boolean termsAccepted;
    private int total_booking;
    
    @Column(name = "registered on")
	private LocalDate createdAt;

    // Constructors
    public User() {
        super();
    }

    public User(int id, String name, String email, String phone, String password, String address, String role, boolean termsAccepted) {
       
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.address = address;
        this.role = role;
        this.termsAccepted = termsAccepted;
    }
    
	@PrePersist
	protected void onCreate() {
	    this.createdAt = LocalDate.now();
	}

    // Getters & Setters


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public LocalDate getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDate createdAt) {
		this.createdAt = createdAt;
	}

	public boolean isTermsAccepted() {
        return termsAccepted;
    }

    public void setTermsAccepted(boolean termsAccepted) {
        this.termsAccepted = termsAccepted;
    }

	public int getTotal_booking() {
		return total_booking;
	}

	public void setTotal_booking(int total_booking) {
		this.total_booking = total_booking;
	}
    
}