package com.top0.bac_webclinic.model;

public class Admin extends User{

    public Admin() {

    }

    public Admin(String id,String name, String email) {
        super(id,name,email);
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
