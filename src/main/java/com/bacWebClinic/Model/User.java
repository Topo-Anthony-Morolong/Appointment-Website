package com.bacWebClinic.Model;

public class User {
	
	protected String Name;
	protected String Email;
	protected String PhoneNumber;
	protected String PhysicalAddress;
	
	public User() {
		Name ="";
		Email = "";
		PhoneNumber ="";
		PhysicalAddress ="";
	}
	
	public User(String name,String email,String phoneNumber,String physicalAddress) {
		this.Name = name;
		this.Email = email;
		this.PhoneNumber = phoneNumber;
		this.PhysicalAddress = physicalAddress;
	}
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		this.Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		this.Email = email;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.PhoneNumber = phoneNumber;
	}
	public String getPhysicalAddress() {
		return PhysicalAddress;
	}
	public void setPhysicalAddress(String physicalAddress) {
		this.PhysicalAddress = physicalAddress;
	}
	
	
}
