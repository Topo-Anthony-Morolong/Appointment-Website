package com.bacWebClinic.Dao;

import com.bacWebClinic.DBUtils.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginDao {
	 
	public boolean check(String username, String password) {
		Connection conn = DBConnection.getConnection();
		try {
			
			String sqlQuery = "";
			
			Statement state = conn.createStatement();
			ResultSet result = state.executeQuery(sqlQuery);
			
			if(result.next()) {
				return true;
			}
			
		}catch(Exception log) {
			
			log.printStackTrace();			
		}
		
		return false;
	}

}
