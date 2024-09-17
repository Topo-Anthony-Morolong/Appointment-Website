package com.top0.bac_webclinic.Utities;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static java.lang.System.out;

public class DBConnection {

    public static Connection databaseLink;

    public static Connection getConnection() {
        try {
            Context context = new InitialContext();
            DataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/bacwebclinicdb");
            databaseLink = dataSource.getConnection();

        } catch (Exception e) {
           e.printStackTrace();
           e.getCause();
        }
        return databaseLink;
    }


}
