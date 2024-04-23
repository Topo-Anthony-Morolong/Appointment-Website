package com.bacWebClinic.DBUtils;

import static java.lang.System.out;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection databaseLink;
	
		public static Connection getConnection(){
			 String URL =    "jdbc:mysql://localhost:3306/jsp_servlet";
		        String user = "root";
		        String password = "";

		        try{
		            Class.forName("com.mysql.cj.jdbc.Driver");
		            databaseLink = DriverManager.getConnection(URL,user,password);
		            out.println("Connection successful.....!");

		        }catch(SQLException | ClassNotFoundException db){
		            db.printStackTrace();
		            db.getCause();
		            out.println("Connection failed.....!");
		        }
			
			return databaseLink;
		}
		
		
}
