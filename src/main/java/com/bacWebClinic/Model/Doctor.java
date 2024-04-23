package com.bacWebClinic.Model;

public class Doctor extends User {
	
	String DoctorID;
	String Specialization;
	
	public Doctor() {
		super();
		this.DoctorID = "";
		this.Specialization = "";
		// TODO Auto-generated constructor stub
	}
	
	public Doctor(String name, String email, String phoneNumber, String physicalAddress,String doctorID, String specialization) {
		super(name, email, phoneNumber, physicalAddress);
		this.DoctorID = doctorID;
		this.Specialization = specialization;
		// TODO Auto-generated constructor stub
	}

	public String getDoctorID() {
		return DoctorID;
	}

	public void setDoctorID(String doctorID) {
		this.DoctorID = doctorID;
	}

	public String getSpecialization() {
		return Specialization;
	}

	public void setSpecialization(String specialization) {
		this.Specialization = specialization;
	}

	

}
