package com.top0.bac_webclinic.model;

public class Patient extends User{

    private String patientId;
    private String dateOfBirth;
    //private Booking booking;

    public Patient(){
        super();
    }

    public Patient(String name, String email, String physicalAddress, String postalAddress, String phoneNumber, String password, String dateOfBirth) {
        super(name, email, physicalAddress, postalAddress, phoneNumber, password);
        this.dateOfBirth = dateOfBirth;
    }

    //working with variables declared within this class by overriding

    @Override
    public String getID() {
        return patientId;
    }
    public void setID(String ID) {
        this.patientId = ID;
    }

    @Override
    public String getDate() {
        return dateOfBirth;
    }
    public void setDate(String date) {
        this.dateOfBirth = date;
    }

    //Overriding from the parent class

    @Override
    public String getName() {
        return super.getName();
    }
    @Override
    public void setName(String name) {
        super.setName(name);
    }

    @Override
    public void setEmail(String email) {
        super.setEmail(email);
    }
    @Override
    public String getEmail() {
        return super.getEmail();
    }

    @Override
    public String getPhysicalAddress() {
        return super.getPhysicalAddress();
    }
    @Override
    public void setPhysicalAddress(String physicalAddress) {
        super.setPhysicalAddress(physicalAddress);
    }

    @Override
    public String getPostalAddress() {
        return super.getPostalAddress();
    }
    @Override
    public void setPostalAddress(String postalAddress) {
        super.setPostalAddress(postalAddress);
    }
    @Override
    public String getPhoneNumber() {
        return super.getPhoneNumber();
    }
    @Override
    public void setPhoneNumber(String phoneNumber) {
        super.setPhoneNumber(phoneNumber);
    }

    @Override
    public String getPassword() {
        return super.getPassword();
    }
    @Override
    public void setPassword(String password) {
        super.setPassword(password);
    }

    @Override
    public String toString() {
        return String.format("Patient [PatientId: %s name: %s email: %s physicalAddress: %s postalAddress: %s phoneNumber: %s password: %s dateOfBirth: %s]",
                                    patientId, getName(), getEmail(), getPhysicalAddress(), getPostalAddress(), getPhoneNumber(), getPassword(), dateOfBirth);
    }
}
