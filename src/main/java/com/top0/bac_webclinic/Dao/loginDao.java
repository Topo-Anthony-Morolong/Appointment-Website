package com.top0.bac_webclinic.Dao;

import com.top0.bac_webclinic.Utities.DBConnection;
import com.top0.bac_webclinic.model.Admin;
import com.top0.bac_webclinic.model.Doctor;
import com.top0.bac_webclinic.model.Patient;
import com.top0.bac_webclinic.model.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import static java.lang.System.out;

public class loginDao {
    Connection AuConn = DBConnection.getConnection();

    String tableName;
    User user;

    public void getAuthenticatedUser(String email, String password){
      if( AuthenticatePatient(email,password) != null){
          tableName= "Patient";

      } else if (AuthenticateAdmin(email,password) != null) {
          tableName = "Admin";
      }else if (AuthenticateDoctor(email,password) != null) {
          tableName = "Doctor";
      }else {
          tableName = null;
          out.println("user not found");
      }
    }


    //Returns a User defined as a Patient
    public User AuthenticatePatient(String email, String password){
         user = new Patient();

        try{
            String sql = "SELECT * FROM `patient` WHERE email='"+email+"' and P_password='"+password+"';";
            Statement stmt = AuConn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next()){
                out.println("user found");
                user.setID(rs.getString("patientID"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setDate(rs.getString("dateOfBirth"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setPhysicalAddress(rs.getString("physicalAddress"));
                user.setPhysicalAddress(rs.getString("physicalAddress"));

                out.println(user.toString());
                AuConn.close();
                stmt.close();
                return user;
            }else{ return null;}

        }catch (SQLException e){
            e.printStackTrace();
            e.getCause();
        }
        return null;
    }
    //Return a User defined as an Admin
    public User AuthenticateAdmin(String email, String password){
         user = new Admin();

        try{
        String sql = "SELECT * FROM `admin` WHERE email='"+email+"' and password='"+password+"';";
        Statement stmt = AuConn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        if(rs.next()){
            out.println("admin found");
            user.setID(rs.getString("adminID"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));


            out.println(user.toString());
            AuConn.close();
            stmt.close();
            return user;
        }else {return null;}


        }catch (SQLException e){
            e.printStackTrace();
            e.getCause();
        }

        return null;
    }

    //Returns a User defined as a Doctor
    public User AuthenticateDoctor(String email, String password){
         user = new Doctor();
         try {
             String sql = "SELECT * FROM `doctor` WHERE email='"+email+"' and doc_password='"+password+"';";
             Statement state = AuConn.createStatement();
             ResultSet rs = state.executeQuery(sql);
             if (rs.next()){
                 if(user instanceof Doctor){
                     out.println("doctor found");
                     user.setID(rs.getString("doctorID"));
                     user.setName(rs.getString("name"));
                     user.setEmail(rs.getString("email"));
                     ((Doctor) user).setSpecialization(rs.getString("Specialization"));

                     out.println(user.toString());
                     AuConn.close();
                     state.close();
                     return user;
                 }
             }else{return null;}

         }catch (SQLException e){
             e.printStackTrace();
             e.getCause();
         }
        return null;
    }
    //Returns the String value stored in tableName after execution of any Authentication method.
    public String getTableName() {
        return tableName;
    }

    public  static void main(String[] args){

        loginDao dao = new loginDao();
        dao.getAuthenticatedUser("temo@gmail.com","1234");
      }
}
