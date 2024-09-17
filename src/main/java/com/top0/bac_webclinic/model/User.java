package com.top0.bac_webclinic.model;

import java.io.Serializable;

public abstract class User implements Serializable {

    private String id;
    private String name;
    private String email;
    private String date;

    private String physicalAddress;
    private String postalAddress;
    private String phoneNumber;
    private String password;
    private String status;

    public User() {

    }

   public User(String name, String email, String physicalAddress, String postalAddress, String phoneNumber, String password){
        this.name = name;
        this.email = email;
        this.physicalAddress = physicalAddress;
        this.postalAddress = postalAddress;
        this.phoneNumber = phoneNumber;
        this.password = password;

   }
   public User(String id,String name, String email){
        this.id = id;
        this.name = name;
        this.email = email;
   }

   public User(String id, String name, String email, String password){
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
   }

   public User( String name, String email){
        this.name = name;
        this.email = email;
   }



    //manipulating the name variable
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    //manipulating the email variable
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    //manipulating the physicalAddress variable
    public String getPhysicalAddress() {
        return physicalAddress;
    }

    public void setPhysicalAddress(String physicalAddress) {
        this.physicalAddress = physicalAddress;
    }

    //manipulating the postAddress variable
    public String getPostalAddress() {
        return postalAddress;
    }

    public void setPostalAddress(String postalAddress) {
        this.postalAddress = postalAddress;
    }

    //manipulating the phoneNumber variable
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    //manipulating the password variable
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    //manipulating the id variable
    public void setID(String id){
        this.id = id;
    }

    public String getID(){
        return id;
    }

    //manipulating the date variable
    public String getDate(){
        return date;
    }

    public void setDate(String date){
        this.date = date;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    public String getStatus(){
        return status;
    }

    //Gets a string representation of user
    @Override
    public String toString(){
        return String.format("User [id: %s name: %s email: %s physicalAddress: %s postalAddress: %s phoneNumber: %s password: %s]", id, name, email, physicalAddress, postalAddress, phoneNumber, password);
    }
}
