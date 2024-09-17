package com.top0.bac_webclinic.Dao;

import com.top0.bac_webclinic.Utities.DBConnection;
import com.top0.bac_webclinic.model.Patient;
import com.top0.bac_webclinic.model.User;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import static java.lang.System.out;

public class signupDao {

    Connection conn = DBConnection.getConnection();

    public void register(User user) throws ClassNotFoundException {

                String rowCount = "SELECT COUNT(*) FROM `patient`;";
        try {
                //creating the patient ID
            PreparedStatement ps = conn.prepareStatement(rowCount);
            ResultSet rs = ps.executeQuery();
            rs.next();
            int count = rs.getInt(1);
            String id = "PID-"+count;

            user.setID(id);

            //Converting date in String format to sql date for compatability
            String date = user.getDate();
            out.println("there is a "+date);

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date dat = sdf.parse(date);

            long time = dat.getTime();
            Date sqlDate = new Date(time);

            out.println("Sql date "+sqlDate);
            String accStatus = "Pending";

            //Inserting values into the database.

            String insertFields= "INSERT INTO `patient`(`patientID`, `name`, `email`, `dateOfBirth`, `phoneNumber`, `physicalAddress`, `postalAddress`, `P_password`, `account_Status`)";
            String insertValues = "VALUES ('"+user.getID()+"','"+user.getName()+"','"+user.getEmail()+"','"+sqlDate+"','"+user.getPhoneNumber()+"','"+user.getPhysicalAddress()+"','"+user.getPostalAddress()+"','"+user.getPassword()+"','"+accStatus+"')";
            String registerUser = insertFields +insertValues;


            Statement state =conn.createStatement();
            state.executeUpdate(registerUser);
            out.println("Registration successful");
        }catch (SQLException | ParseException io){
            io.printStackTrace();

        }finally {
            try {
                conn.close();
                out.println("Connection Closed Successfully");
            }catch (SQLException IO){
                IO.printStackTrace();
                IO.getCause();
            }
        }


    }
}
