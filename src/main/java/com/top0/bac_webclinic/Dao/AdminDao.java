package com.top0.bac_webclinic.Dao;

import com.top0.bac_webclinic.Utities.DBConnection;
import com.top0.bac_webclinic.model.Doctor;
import com.top0.bac_webclinic.model.Patient;
import com.top0.bac_webclinic.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static java.lang.System.out;

public class AdminDao {
    Connection conn;
    User user;
    List<User> patientList;

    //Retrieving a list of users
    public List<User> getAllPatients() {
        patientList =new ArrayList<User>();
        conn = DBConnection.getConnection();

        String sql = "SELECT * FROM `patient` WHERE account_Status ='Pending';";

        try {
            PreparedStatement pr = conn.prepareStatement(sql);
            ResultSet rs = pr.executeQuery();

            while (rs.next()) {

                user = new Patient();
                user.setName(rs.getString("name"));
                user.setStatus(rs.getString("account_Status"));

                    patientList.add(user);
                    out.println("Patient Added Successfully");
            }
            conn.close();
            pr.close();
            return patientList;
        }catch (SQLException e) {
            e.printStackTrace();
            e.getCause();
        }

        return null;
    }

    public void addDoctor(Doctor doctor) {
        conn = DBConnection.getConnection();

        String insertField = "INSERT INTO `bacwebclinicdb`.`doctor` (`doctorID`, `name`, `email`, `doc_password`, `specialization`)";
        String insertValues = "VALUES ('Doc-7', '"+doctor.getName()+"', '"+doctor.getEmail()+"', 'abcd', '"+doctor.getSpecialization()+"')";
        String sql = insertField + insertValues;

        try {
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(sql);

        }catch (Exception e) {
            e.printStackTrace();
            e.getCause();
        }finally {
            try {
                conn.close();
                out.println("Connection Closed Successfully");
            } catch (SQLException IO) {
                IO.printStackTrace();
                IO.getCause();
            }
        }
    }

}
