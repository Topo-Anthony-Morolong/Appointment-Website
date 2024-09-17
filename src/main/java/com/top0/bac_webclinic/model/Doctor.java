package com.top0.bac_webclinic.model;

public class Doctor extends User{

   private String specialization;
    public Doctor(){
    }

    public Doctor( String name, String email,String password, String specialization) {
            super(name, email, password);
            this.specialization= specialization;
    }
    public Doctor( String name, String email, String specialization) {
        super(name, email);
        this.specialization= specialization;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
