package com.bacWebClinic.Dao;

import com.bacWebClinic.DBUtils.DBConnection;
import com.bacWebClinic.Model.Patient;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import static java.lang.System.out;

public class SignupDao {

	 public int patientSignup(Patient patient) {
		 
		 Connection conn = DBConnection.getConnection();
		 int result = 0;
		 
		 String insertFields = "";
		 String insertValues = "";
		 String signup= insertFields + insertValues;
		 try {
			 
			 Statement state = conn.createStatement();
			 state.executeQuery(signup);
			 out.print("signup succesfull");
			 
		 }catch(SQLException io) {
			 
			 io.printStackTrace();
			 out.print("signup failed");
		 }
		 finally {
			 try {
				 conn.close();
				 out.print("Connection closed succesfully...!");
			 }catch(SQLException f) {
				 
				 f.printStackTrace();
				 out.println("Connection closing failed...!");
			 }
			 
		 }
		 
		 return result;
	 }
}
