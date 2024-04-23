package com.bacWebClinic.Model;

public class Patient extends User {

		public Patient() {
			super();
		}
		
		public Patient(String name, String email,String phoneNumber,String physicalAddress) {
			super(name, email, phoneNumber, physicalAddress);
		}
}
